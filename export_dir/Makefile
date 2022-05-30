TF_CFLAGS=-I/usr/local/lib/python3.6/dist-packages/tensorflow/include -D_GLIBCXX_USE_CXX11_ABI=1 -DEIGEN_MAX_ALIGN_BYTES=64
TF_LFLAGS=-L/usr/local/lib/python3.6/dist-packages/tensorflow -l:libtensorflow_framework.so.2
CFLAGS=-std=c++14 -I/usr/local/include/opencv4/
LFLAGS=-L/usr/local/lib -lopencv_core -lopencv_imgproc -lopencv_videoio -O2

all:
	g++ inference.cc -o inference $(CFLAGS) $(TF_CFLAGS) $(TF_LFLAGS) $(LFLAGS)

	
