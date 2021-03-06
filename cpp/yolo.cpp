#include <fstream>

#include <opencv2/opencv.hpp>

std::vector<std::string> load_class_list() {
    std::vector<std::string> class_list;
    std::ifstream ifs("config_files/classes.txt");
    std::string line;
    while (getline(ifs, line))
    {
        class_list.push_back(line);
    } 
    return class_list;
}

const std::string YOLO_VERSION = "v4";

void load_net(cv::dnn::Net &net, bool is_cuda) {
    auto result = cv::dnn::readNetFromDarknet("config_files/yolo" + YOLO_VERSION + ".cfg", "config_files/yolo" + YOLO_VERSION + ".weights");
    if (is_cuda) {
        std::cout << "Attempting to use CUDA\n";
        result.setPreferableBackend(cv::dnn::DNN_BACKEND_CUDA);
        result.setPreferableTarget(cv::dnn::DNN_TARGET_CUDA_FP16);
    } else {
        std::cout << "Running on CPU\n";
        result.setPreferableBackend(cv::dnn::DNN_BACKEND_OPENCV);
        result.setPreferableTarget(cv::dnn::DNN_TARGET_CPU);
    }
    net = result;
}

const std::vector<cv::Scalar> colors = {cv::Scalar(255, 255, 0), cv::Scalar(0, 255, 0), cv::Scalar(0, 255, 255), cv::Scalar(255, 0, 0)};

int main(int argc, char ** argv)
{

    std::vector<std::string> class_list = load_class_list();
    
    std::string pipeline = "nvarguscamerasrc ! video/x-raw(memory:NVMM), width=(int)1280, height=(int)720, framerate=30/1 ! nvvidconv flip-method=0 ! video/x-raw, width=(int)1280, height=(int)720, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink";

    cv::Mat frame;
    cv::VideoCapture capture(pipeline, cv::CAP_GSTREAMER);
    if(!capture.isOpened()){
	    std::cerr << "Error opening camera";
	    return -1;
	}

    bool is_cuda = argc > 1 && strcmp(argv[1], "cuda") == 0;

    cv::dnn::Net net;
    load_net(net, is_cuda);

    auto model = cv::dnn::DetectionModel(net);
    model.setInputParams(1./255, cv::Size(128, 128), cv::Scalar(), true);

    auto start = std::chrono::high_resolution_clock::now();
    int frame_count = 0;
    float fps = -1;
    int total_frames = 0;

    while(true)
    {
        capture.read(frame);
        if (frame.empty())
        {
            std::cout << "End of stream\n";
            break;
        }

        std::vector<int> classIds;
        std::vector<float> confidences;
        std::vector<cv::Rect> boxes;
        model.detect(frame, classIds, confidences, boxes, .2, .4);
        frame_count++;
        total_frames++;

        int detections = classIds.size();

        for (int i = 0; i < detections; ++i) {

            auto box = boxes[i];
            auto classId = classIds[i];
            const auto color = colors[classId % colors.size()];
            cv::rectangle(frame, box, color, 3);

            cv::rectangle(frame, cv::Point(box.x, box.y - 20), cv::Point(box.x + box.width, box.y), color, cv::FILLED);
            cv::putText(frame, class_list[classId].c_str(), cv::Point(box.x, box.y - 5), cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 0, 0));
        }

        if (frame_count >= 30) {

            auto end = std::chrono::high_resolution_clock::now();
            fps = frame_count * 1000.0 / std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();

            frame_count = 0;
            start = std::chrono::high_resolution_clock::now();
        }

        if (fps > 0) {

            std::ostringstream fps_label;
            fps_label << std::fixed << std::setprecision(2);
            fps_label << "FPS: " << fps;
            std::string fps_label_str = fps_label.str();

            cv::putText(frame, fps_label_str.c_str(), cv::Point(10, 25), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(0, 0, 255), 2);
            
        }

        cv::imshow("output", frame);

        if(cv::waitKey(1) != -1) {
            capture.release();
            std::cout << "finished by user\n";
            break;
        }
    }

    std::cout << "Total frames: " << total_frames << "\n";

    return 0;
}
