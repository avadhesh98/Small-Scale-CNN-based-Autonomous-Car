ճ	
?#?#
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
1
Atan
x"T
y"T"
Ttype:
2
	
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
7

Reciprocal
x"T
y"T"
Ttype:
2
	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( ?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
3
Square
x"T
y"T"
Ttype:
2
	
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?"	tfckpt2pb*2.6.22unknown??
|
input_xPlaceholder*0
_output_shapes
:?????????B?*
dtype0*%
shape:?????????B?
n
PlaceholderPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
$wc1/Initializer/random_uniform/shapeConst*
_class

loc:@wc1*
_output_shapes
:*
dtype0*%
valueB"            

"wc1/Initializer/random_uniform/minConst*
_class

loc:@wc1*
_output_shapes
: *
dtype0*
valueB
 *Y??

"wc1/Initializer/random_uniform/maxConst*
_class

loc:@wc1*
_output_shapes
: *
dtype0*
valueB
 *Y?=
?
,wc1/Initializer/random_uniform/RandomUniformRandomUniform$wc1/Initializer/random_uniform/shape*
T0*
_class

loc:@wc1*&
_output_shapes
:*
dtype0*

seed *
seed2 
?
"wc1/Initializer/random_uniform/subSub"wc1/Initializer/random_uniform/max"wc1/Initializer/random_uniform/min*
T0*
_class

loc:@wc1*
_output_shapes
: 
?
"wc1/Initializer/random_uniform/mulMul,wc1/Initializer/random_uniform/RandomUniform"wc1/Initializer/random_uniform/sub*
T0*
_class

loc:@wc1*&
_output_shapes
:
?
wc1/Initializer/random_uniformAddV2"wc1/Initializer/random_uniform/mul"wc1/Initializer/random_uniform/min*
T0*
_class

loc:@wc1*&
_output_shapes
:
?
wc1VarHandleOp*
_class

loc:@wc1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*
shared_namewc1
W
$wc1/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc1*
_output_shapes
: 
P

wc1/AssignAssignVariableOpwc1wc1/Initializer/random_uniform*
dtype0
c
wc1/Read/ReadVariableOpReadVariableOpwc1*&
_output_shapes
:*
dtype0
R
ConstConst*
_output_shapes
:*
dtype0*
valueB*???=
?
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
A
Variable/AssignAssignVariableOpVariableConst*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
a
Conv2D/ReadVariableOpReadVariableOpwc1*&
_output_shapes
:*
dtype0
?
Conv2DConv2Dinput_xConv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????b*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
W
add/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
b
addAddV2Conv2Dadd/ReadVariableOp*
T0*/
_output_shapes
:?????????b
L
relu1Reluadd*
T0*/
_output_shapes
:?????????b
?
$wc2/Initializer/random_uniform/shapeConst*
_class

loc:@wc2*
_output_shapes
:*
dtype0*%
valueB"         $   

"wc2/Initializer/random_uniform/minConst*
_class

loc:@wc2*
_output_shapes
: *
dtype0*
valueB
 *ↁ?

"wc2/Initializer/random_uniform/maxConst*
_class

loc:@wc2*
_output_shapes
: *
dtype0*
valueB
 *ↁ=
?
,wc2/Initializer/random_uniform/RandomUniformRandomUniform$wc2/Initializer/random_uniform/shape*
T0*
_class

loc:@wc2*&
_output_shapes
:$*
dtype0*

seed *
seed2 
?
"wc2/Initializer/random_uniform/subSub"wc2/Initializer/random_uniform/max"wc2/Initializer/random_uniform/min*
T0*
_class

loc:@wc2*
_output_shapes
: 
?
"wc2/Initializer/random_uniform/mulMul,wc2/Initializer/random_uniform/RandomUniform"wc2/Initializer/random_uniform/sub*
T0*
_class

loc:@wc2*&
_output_shapes
:$
?
wc2/Initializer/random_uniformAddV2"wc2/Initializer/random_uniform/mul"wc2/Initializer/random_uniform/min*
T0*
_class

loc:@wc2*&
_output_shapes
:$
?
wc2VarHandleOp*
_class

loc:@wc2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:$*
shared_namewc2
W
$wc2/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc2*
_output_shapes
: 
P

wc2/AssignAssignVariableOpwc2wc2/Initializer/random_uniform*
dtype0
c
wc2/Read/ReadVariableOpReadVariableOpwc2*&
_output_shapes
:$*
dtype0
T
Const_1Const*
_output_shapes
:$*
dtype0*
valueB$*???=
?

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:$*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
G
Variable_1/AssignAssignVariableOp
Variable_1Const_1*
dtype0
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:$*
dtype0
c
Conv2D_1/ReadVariableOpReadVariableOpwc2*&
_output_shapes
:$*
dtype0
?
Conv2D_1Conv2Drelu1Conv2D_1/ReadVariableOp*
T0*/
_output_shapes
:?????????/$*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
[
add_1/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:$*
dtype0
h
add_1AddV2Conv2D_1add_1/ReadVariableOp*
T0*/
_output_shapes
:?????????/$
N
relu2Reluadd_1*
T0*/
_output_shapes
:?????????/$
?
$wc3/Initializer/random_uniform/shapeConst*
_class

loc:@wc3*
_output_shapes
:*
dtype0*%
valueB"      $   0   

"wc3/Initializer/random_uniform/minConst*
_class

loc:@wc3*
_output_shapes
: *
dtype0*
valueB
 *??Z?

"wc3/Initializer/random_uniform/maxConst*
_class

loc:@wc3*
_output_shapes
: *
dtype0*
valueB
 *??Z=
?
,wc3/Initializer/random_uniform/RandomUniformRandomUniform$wc3/Initializer/random_uniform/shape*
T0*
_class

loc:@wc3*&
_output_shapes
:$0*
dtype0*

seed *
seed2 
?
"wc3/Initializer/random_uniform/subSub"wc3/Initializer/random_uniform/max"wc3/Initializer/random_uniform/min*
T0*
_class

loc:@wc3*
_output_shapes
: 
?
"wc3/Initializer/random_uniform/mulMul,wc3/Initializer/random_uniform/RandomUniform"wc3/Initializer/random_uniform/sub*
T0*
_class

loc:@wc3*&
_output_shapes
:$0
?
wc3/Initializer/random_uniformAddV2"wc3/Initializer/random_uniform/mul"wc3/Initializer/random_uniform/min*
T0*
_class

loc:@wc3*&
_output_shapes
:$0
?
wc3VarHandleOp*
_class

loc:@wc3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:$0*
shared_namewc3
W
$wc3/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc3*
_output_shapes
: 
P

wc3/AssignAssignVariableOpwc3wc3/Initializer/random_uniform*
dtype0
c
wc3/Read/ReadVariableOpReadVariableOpwc3*&
_output_shapes
:$0*
dtype0
T
Const_2Const*
_output_shapes
:0*
dtype0*
valueB0*???=
?

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
G
Variable_2/AssignAssignVariableOp
Variable_2Const_2*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:0*
dtype0
c
Conv2D_2/ReadVariableOpReadVariableOpwc3*&
_output_shapes
:$0*
dtype0
?
Conv2D_2Conv2Drelu2Conv2D_2/ReadVariableOp*
T0*/
_output_shapes
:?????????0*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
[
add_2/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:0*
dtype0
h
add_2AddV2Conv2D_2add_2/ReadVariableOp*
T0*/
_output_shapes
:?????????0
N
relu3Reluadd_2*
T0*/
_output_shapes
:?????????0
?
$wc4/Initializer/random_uniform/shapeConst*
_class

loc:@wc4*
_output_shapes
:*
dtype0*%
valueB"      0   @   

"wc4/Initializer/random_uniform/minConst*
_class

loc:@wc4*
_output_shapes
: *
dtype0*
valueB
 *???

"wc4/Initializer/random_uniform/maxConst*
_class

loc:@wc4*
_output_shapes
: *
dtype0*
valueB
 *??=
?
,wc4/Initializer/random_uniform/RandomUniformRandomUniform$wc4/Initializer/random_uniform/shape*
T0*
_class

loc:@wc4*&
_output_shapes
:0@*
dtype0*

seed *
seed2 
?
"wc4/Initializer/random_uniform/subSub"wc4/Initializer/random_uniform/max"wc4/Initializer/random_uniform/min*
T0*
_class

loc:@wc4*
_output_shapes
: 
?
"wc4/Initializer/random_uniform/mulMul,wc4/Initializer/random_uniform/RandomUniform"wc4/Initializer/random_uniform/sub*
T0*
_class

loc:@wc4*&
_output_shapes
:0@
?
wc4/Initializer/random_uniformAddV2"wc4/Initializer/random_uniform/mul"wc4/Initializer/random_uniform/min*
T0*
_class

loc:@wc4*&
_output_shapes
:0@
?
wc4VarHandleOp*
_class

loc:@wc4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0@*
shared_namewc4
W
$wc4/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc4*
_output_shapes
: 
P

wc4/AssignAssignVariableOpwc4wc4/Initializer/random_uniform*
dtype0
c
wc4/Read/ReadVariableOpReadVariableOpwc4*&
_output_shapes
:0@*
dtype0
T
Const_3Const*
_output_shapes
:@*
dtype0*
valueB@*???=
?

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
G
Variable_3/AssignAssignVariableOp
Variable_3Const_3*
dtype0
e
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:@*
dtype0
c
Conv2D_3/ReadVariableOpReadVariableOpwc4*&
_output_shapes
:0@*
dtype0
?
Conv2D_3Conv2Drelu3Conv2D_3/ReadVariableOp*
T0*/
_output_shapes
:?????????@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
[
add_3/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:@*
dtype0
h
add_3AddV2Conv2D_3add_3/ReadVariableOp*
T0*/
_output_shapes
:?????????@
N
relu4Reluadd_3*
T0*/
_output_shapes
:?????????@
?
$wc5/Initializer/random_uniform/shapeConst*
_class

loc:@wc5*
_output_shapes
:*
dtype0*%
valueB"      @   @   

"wc5/Initializer/random_uniform/minConst*
_class

loc:@wc5*
_output_shapes
: *
dtype0*
valueB
 *:͓?

"wc5/Initializer/random_uniform/maxConst*
_class

loc:@wc5*
_output_shapes
: *
dtype0*
valueB
 *:͓=
?
,wc5/Initializer/random_uniform/RandomUniformRandomUniform$wc5/Initializer/random_uniform/shape*
T0*
_class

loc:@wc5*&
_output_shapes
:@@*
dtype0*

seed *
seed2 
?
"wc5/Initializer/random_uniform/subSub"wc5/Initializer/random_uniform/max"wc5/Initializer/random_uniform/min*
T0*
_class

loc:@wc5*
_output_shapes
: 
?
"wc5/Initializer/random_uniform/mulMul,wc5/Initializer/random_uniform/RandomUniform"wc5/Initializer/random_uniform/sub*
T0*
_class

loc:@wc5*&
_output_shapes
:@@
?
wc5/Initializer/random_uniformAddV2"wc5/Initializer/random_uniform/mul"wc5/Initializer/random_uniform/min*
T0*
_class

loc:@wc5*&
_output_shapes
:@@
?
wc5VarHandleOp*
_class

loc:@wc5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@@*
shared_namewc5
W
$wc5/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc5*
_output_shapes
: 
P

wc5/AssignAssignVariableOpwc5wc5/Initializer/random_uniform*
dtype0
c
wc5/Read/ReadVariableOpReadVariableOpwc5*&
_output_shapes
:@@*
dtype0
T
Const_4Const*
_output_shapes
:@*
dtype0*
valueB@*???=
?

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
G
Variable_4/AssignAssignVariableOp
Variable_4Const_4*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:@*
dtype0
c
Conv2D_4/ReadVariableOpReadVariableOpwc5*&
_output_shapes
:@@*
dtype0
?
Conv2D_4Conv2Drelu4Conv2D_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
[
add_4/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:@*
dtype0
h
add_4AddV2Conv2D_4add_4/ReadVariableOp*
T0*/
_output_shapes
:?????????@
N
relu5Reluadd_4*
T0*/
_output_shapes
:?????????@
_
reshape1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  
k
reshape1Reshaperelu5reshape1/shape*
T0*
Tshape0*(
_output_shapes
:??????????	
?
$fc2/Initializer/random_uniform/shapeConst*
_class

loc:@fc2*
_output_shapes
:*
dtype0*
valueB"?  d   

"fc2/Initializer/random_uniform/minConst*
_class

loc:@fc2*
_output_shapes
: *
dtype0*
valueB
 *?ƍ?

"fc2/Initializer/random_uniform/maxConst*
_class

loc:@fc2*
_output_shapes
: *
dtype0*
valueB
 *?ƍ=
?
,fc2/Initializer/random_uniform/RandomUniformRandomUniform$fc2/Initializer/random_uniform/shape*
T0*
_class

loc:@fc2*
_output_shapes
:	?	d*
dtype0*

seed *
seed2 
?
"fc2/Initializer/random_uniform/subSub"fc2/Initializer/random_uniform/max"fc2/Initializer/random_uniform/min*
T0*
_class

loc:@fc2*
_output_shapes
: 
?
"fc2/Initializer/random_uniform/mulMul,fc2/Initializer/random_uniform/RandomUniform"fc2/Initializer/random_uniform/sub*
T0*
_class

loc:@fc2*
_output_shapes
:	?	d
?
fc2/Initializer/random_uniformAddV2"fc2/Initializer/random_uniform/mul"fc2/Initializer/random_uniform/min*
T0*
_class

loc:@fc2*
_output_shapes
:	?	d
?
fc2VarHandleOp*
_class

loc:@fc2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	?	d*
shared_namefc2
W
$fc2/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc2*
_output_shapes
: 
P

fc2/AssignAssignVariableOpfc2fc2/Initializer/random_uniform*
dtype0
\
fc2/Read/ReadVariableOpReadVariableOpfc2*
_output_shapes
:	?	d*
dtype0
T
Const_5Const*
_output_shapes
:d*
dtype0*
valueBd*???=
?

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:d*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
G
Variable_5/AssignAssignVariableOp
Variable_5Const_5*
dtype0
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:d*
dtype0
[
matmul1/ReadVariableOpReadVariableOpfc2*
_output_shapes
:	?	d*
dtype0
?
matmul1MatMulreshape1matmul1/ReadVariableOp*
T0*'
_output_shapes
:?????????d*
transpose_a( *
transpose_b( 
[
add_5/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:d*
dtype0
_
add_5AddV2matmul1add_5/ReadVariableOp*
T0*'
_output_shapes
:?????????d
F
relu6Reluadd_5*
T0*'
_output_shapes
:?????????d
?
$fc3/Initializer/random_uniform/shapeConst*
_class

loc:@fc3*
_output_shapes
:*
dtype0*
valueB"d   2   

"fc3/Initializer/random_uniform/minConst*
_class

loc:@fc3*
_output_shapes
: *
dtype0*
valueB
 *??L?

"fc3/Initializer/random_uniform/maxConst*
_class

loc:@fc3*
_output_shapes
: *
dtype0*
valueB
 *??L>
?
,fc3/Initializer/random_uniform/RandomUniformRandomUniform$fc3/Initializer/random_uniform/shape*
T0*
_class

loc:@fc3*
_output_shapes

:d2*
dtype0*

seed *
seed2 
?
"fc3/Initializer/random_uniform/subSub"fc3/Initializer/random_uniform/max"fc3/Initializer/random_uniform/min*
T0*
_class

loc:@fc3*
_output_shapes
: 
?
"fc3/Initializer/random_uniform/mulMul,fc3/Initializer/random_uniform/RandomUniform"fc3/Initializer/random_uniform/sub*
T0*
_class

loc:@fc3*
_output_shapes

:d2
?
fc3/Initializer/random_uniformAddV2"fc3/Initializer/random_uniform/mul"fc3/Initializer/random_uniform/min*
T0*
_class

loc:@fc3*
_output_shapes

:d2
?
fc3VarHandleOp*
_class

loc:@fc3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:d2*
shared_namefc3
W
$fc3/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc3*
_output_shapes
: 
P

fc3/AssignAssignVariableOpfc3fc3/Initializer/random_uniform*
dtype0
[
fc3/Read/ReadVariableOpReadVariableOpfc3*
_output_shapes

:d2*
dtype0
T
Const_6Const*
_output_shapes
:2*
dtype0*
valueB2*???=
?

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:2*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
G
Variable_6/AssignAssignVariableOp
Variable_6Const_6*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:2*
dtype0
Z
matmul2/ReadVariableOpReadVariableOpfc3*
_output_shapes

:d2*
dtype0
?
matmul2MatMulrelu6matmul2/ReadVariableOp*
T0*'
_output_shapes
:?????????2*
transpose_a( *
transpose_b( 
[
add_6/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:2*
dtype0
_
add_6AddV2matmul2add_6/ReadVariableOp*
T0*'
_output_shapes
:?????????2
F
relu7Reluadd_6*
T0*'
_output_shapes
:?????????2
?
$fc4/Initializer/random_uniform/shapeConst*
_class

loc:@fc4*
_output_shapes
:*
dtype0*
valueB"2   
   

"fc4/Initializer/random_uniform/minConst*
_class

loc:@fc4*
_output_shapes
: *
dtype0*
valueB
 *?衾

"fc4/Initializer/random_uniform/maxConst*
_class

loc:@fc4*
_output_shapes
: *
dtype0*
valueB
 *???>
?
,fc4/Initializer/random_uniform/RandomUniformRandomUniform$fc4/Initializer/random_uniform/shape*
T0*
_class

loc:@fc4*
_output_shapes

:2
*
dtype0*

seed *
seed2 
?
"fc4/Initializer/random_uniform/subSub"fc4/Initializer/random_uniform/max"fc4/Initializer/random_uniform/min*
T0*
_class

loc:@fc4*
_output_shapes
: 
?
"fc4/Initializer/random_uniform/mulMul,fc4/Initializer/random_uniform/RandomUniform"fc4/Initializer/random_uniform/sub*
T0*
_class

loc:@fc4*
_output_shapes

:2

?
fc4/Initializer/random_uniformAddV2"fc4/Initializer/random_uniform/mul"fc4/Initializer/random_uniform/min*
T0*
_class

loc:@fc4*
_output_shapes

:2

?
fc4VarHandleOp*
_class

loc:@fc4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:2
*
shared_namefc4
W
$fc4/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc4*
_output_shapes
: 
P

fc4/AssignAssignVariableOpfc4fc4/Initializer/random_uniform*
dtype0
[
fc4/Read/ReadVariableOpReadVariableOpfc4*
_output_shapes

:2
*
dtype0
T
Const_7Const*
_output_shapes
:
*
dtype0*
valueB
*???=
?

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
G
Variable_7/AssignAssignVariableOp
Variable_7Const_7*
dtype0
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:
*
dtype0
Z
matmul3/ReadVariableOpReadVariableOpfc4*
_output_shapes

:2
*
dtype0
?
matmul3MatMulrelu7matmul3/ReadVariableOp*
T0*'
_output_shapes
:?????????
*
transpose_a( *
transpose_b( 
[
add_7/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:
*
dtype0
_
add_7AddV2matmul3add_7/ReadVariableOp*
T0*'
_output_shapes
:?????????

F
relu8Reluadd_7*
T0*'
_output_shapes
:?????????

?
$fc5/Initializer/random_uniform/shapeConst*
_class

loc:@fc5*
_output_shapes
:*
dtype0*
valueB"
      

"fc5/Initializer/random_uniform/minConst*
_class

loc:@fc5*
_output_shapes
: *
dtype0*
valueB
 *?=?

"fc5/Initializer/random_uniform/maxConst*
_class

loc:@fc5*
_output_shapes
: *
dtype0*
valueB
 *?=?
?
,fc5/Initializer/random_uniform/RandomUniformRandomUniform$fc5/Initializer/random_uniform/shape*
T0*
_class

loc:@fc5*
_output_shapes

:
*
dtype0*

seed *
seed2 
?
"fc5/Initializer/random_uniform/subSub"fc5/Initializer/random_uniform/max"fc5/Initializer/random_uniform/min*
T0*
_class

loc:@fc5*
_output_shapes
: 
?
"fc5/Initializer/random_uniform/mulMul,fc5/Initializer/random_uniform/RandomUniform"fc5/Initializer/random_uniform/sub*
T0*
_class

loc:@fc5*
_output_shapes

:

?
fc5/Initializer/random_uniformAddV2"fc5/Initializer/random_uniform/mul"fc5/Initializer/random_uniform/min*
T0*
_class

loc:@fc5*
_output_shapes

:

?
fc5VarHandleOp*
_class

loc:@fc5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:
*
shared_namefc5
W
$fc5/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc5*
_output_shapes
: 
P

fc5/AssignAssignVariableOpfc5fc5/Initializer/random_uniform*
dtype0
[
fc5/Read/ReadVariableOpReadVariableOpfc5*
_output_shapes

:
*
dtype0
T
Const_8Const*
_output_shapes
:*
dtype0*
valueB*???=
?

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
G
Variable_8/AssignAssignVariableOp
Variable_8Const_8*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:*
dtype0
Z
matmul4/ReadVariableOpReadVariableOpfc5*
_output_shapes

:
*
dtype0
?
matmul4MatMulrelu8matmul4/ReadVariableOp*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
[
add_8/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:*
dtype0
_
add_8AddV2matmul4add_8/ReadVariableOp*
T0*'
_output_shapes
:?????????
E
AtanAtanadd_8*
T0*'
_output_shapes
:?????????
L
atan1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
M
atan1MulAtanatan1/y*
T0*'
_output_shapes
:?????????
P
SubSubPlaceholderatan1*
T0*'
_output_shapes
:?????????
G
SquareSquareSub*
T0*'
_output_shapes
:?????????
X
Const_9Const*
_output_shapes
:*
dtype0*
valueB"       
[
MeanMeanSquareConst_9*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
^
gradients/grad_ys_0/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
z
gradients/grad_ys_0Fillgradients/Shapegradients/grad_ys_0/Const*
T0*
_output_shapes
: *

index_type0
r
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
?
gradients/Mean_grad/ReshapeReshapegradients/grad_ys_0!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
_
gradients/Mean_grad/ShapeShapeSquare*
T0*
_output_shapes
:*
out_type0
?
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0*'
_output_shapes
:?????????
a
gradients/Mean_grad/Shape_1ShapeSquare*
T0*
_output_shapes
:*
out_type0
^
gradients/Mean_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
c
gradients/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
gradients/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
_
gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
?
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
?
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*'
_output_shapes
:?????????
~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
t
gradients/Square_grad/MulMulSubgradients/Square_grad/Const*
T0*'
_output_shapes
:?????????
?
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*'
_output_shapes
:?????????
c
gradients/Sub_grad/ShapeShapePlaceholder*
T0*
_output_shapes
:*
out_type0
_
gradients/Sub_grad/Shape_1Shapeatan1*
T0*
_output_shapes
:*
out_type0
?
(gradients/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Sub_grad/Shapegradients/Sub_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/Sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/Sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/Sub_grad/ReshapeReshapegradients/Sub_grad/Sumgradients/Sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
l
gradients/Sub_grad/NegNeggradients/Square_grad/Mul_1*
T0*'
_output_shapes
:?????????
?
gradients/Sub_grad/Sum_1Sumgradients/Sub_grad/Neg*gradients/Sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/Sub_grad/Reshape_1Reshapegradients/Sub_grad/Sum_1gradients/Sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
g
#gradients/Sub_grad/tuple/group_depsNoOp^gradients/Sub_grad/Reshape^gradients/Sub_grad/Reshape_1
?
+gradients/Sub_grad/tuple/control_dependencyIdentitygradients/Sub_grad/Reshape$^gradients/Sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Sub_grad/Reshape*'
_output_shapes
:?????????
?
-gradients/Sub_grad/tuple/control_dependency_1Identitygradients/Sub_grad/Reshape_1$^gradients/Sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Sub_grad/Reshape_1*'
_output_shapes
:?????????
^
gradients/atan1_grad/ShapeShapeAtan*
T0*
_output_shapes
:*
out_type0
a
gradients/atan1_grad/Shape_1Shapeatan1/y*
T0*
_output_shapes
: *
out_type0
?
*gradients/atan1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/atan1_grad/Shapegradients/atan1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/atan1_grad/MulMul-gradients/Sub_grad/tuple/control_dependency_1atan1/y*
T0*'
_output_shapes
:?????????
?
gradients/atan1_grad/SumSumgradients/atan1_grad/Mul*gradients/atan1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/atan1_grad/ReshapeReshapegradients/atan1_grad/Sumgradients/atan1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients/atan1_grad/Mul_1MulAtan-gradients/Sub_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:?????????
?
gradients/atan1_grad/Sum_1Sumgradients/atan1_grad/Mul_1,gradients/atan1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/atan1_grad/Reshape_1Reshapegradients/atan1_grad/Sum_1gradients/atan1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients/atan1_grad/tuple/group_depsNoOp^gradients/atan1_grad/Reshape^gradients/atan1_grad/Reshape_1
?
-gradients/atan1_grad/tuple/control_dependencyIdentitygradients/atan1_grad/Reshape&^gradients/atan1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/atan1_grad/Reshape*'
_output_shapes
:?????????
?
/gradients/atan1_grad/tuple/control_dependency_1Identitygradients/atan1_grad/Reshape_1&^gradients/atan1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/atan1_grad/Reshape_1*
_output_shapes
: 
?
gradients/Atan_grad/SquareSquareadd_8.^gradients/atan1_grad/tuple/control_dependency*
T0*'
_output_shapes
:?????????
?
gradients/Atan_grad/ConstConst.^gradients/atan1_grad/tuple/control_dependency*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
gradients/Atan_grad/AddAddV2gradients/Atan_grad/Constgradients/Atan_grad/Square*
T0*'
_output_shapes
:?????????
w
gradients/Atan_grad/Reciprocal
Reciprocalgradients/Atan_grad/Add*
T0*'
_output_shapes
:?????????
?
gradients/Atan_grad/mulMul-gradients/atan1_grad/tuple/control_dependencygradients/Atan_grad/Reciprocal*
T0*'
_output_shapes
:?????????
a
gradients/add_8_grad/ShapeShapematmul4*
T0*
_output_shapes
:*
out_type0
p
gradients/add_8_grad/Shape_1Shapeadd_8/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/add_8_grad/SumSumgradients/Atan_grad/mul*gradients/add_8_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients/add_8_grad/Sum_1Sumgradients/Atan_grad/mul,gradients/add_8_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
?
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_8_grad/Reshape*'
_output_shapes
:?????????
?
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1*
_output_shapes
:
?
gradients/matmul4_grad/MatMulMatMul-gradients/add_8_grad/tuple/control_dependencymatmul4/ReadVariableOp*
T0*'
_output_shapes
:?????????
*
transpose_a( *
transpose_b(
?
gradients/matmul4_grad/MatMul_1MatMulrelu8-gradients/add_8_grad/tuple/control_dependency*
T0*
_output_shapes

:
*
transpose_a(*
transpose_b( 
q
'gradients/matmul4_grad/tuple/group_depsNoOp^gradients/matmul4_grad/MatMul ^gradients/matmul4_grad/MatMul_1
?
/gradients/matmul4_grad/tuple/control_dependencyIdentitygradients/matmul4_grad/MatMul(^gradients/matmul4_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/matmul4_grad/MatMul*'
_output_shapes
:?????????

?
1gradients/matmul4_grad/tuple/control_dependency_1Identitygradients/matmul4_grad/MatMul_1(^gradients/matmul4_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/matmul4_grad/MatMul_1*
_output_shapes

:

?
gradients/relu8_grad/ReluGradReluGrad/gradients/matmul4_grad/tuple/control_dependencyrelu8*
T0*'
_output_shapes
:?????????

a
gradients/add_7_grad/ShapeShapematmul3*
T0*
_output_shapes
:*
out_type0
p
gradients/add_7_grad/Shape_1Shapeadd_7/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/add_7_grad/SumSumgradients/relu8_grad/ReluGrad*gradients/add_7_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
gradients/add_7_grad/Sum_1Sumgradients/relu8_grad/ReluGrad,gradients/add_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
?
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_7_grad/Reshape*'
_output_shapes
:?????????

?
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1*
_output_shapes
:

?
gradients/matmul3_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencymatmul3/ReadVariableOp*
T0*'
_output_shapes
:?????????2*
transpose_a( *
transpose_b(
?
gradients/matmul3_grad/MatMul_1MatMulrelu7-gradients/add_7_grad/tuple/control_dependency*
T0*
_output_shapes

:2
*
transpose_a(*
transpose_b( 
q
'gradients/matmul3_grad/tuple/group_depsNoOp^gradients/matmul3_grad/MatMul ^gradients/matmul3_grad/MatMul_1
?
/gradients/matmul3_grad/tuple/control_dependencyIdentitygradients/matmul3_grad/MatMul(^gradients/matmul3_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/matmul3_grad/MatMul*'
_output_shapes
:?????????2
?
1gradients/matmul3_grad/tuple/control_dependency_1Identitygradients/matmul3_grad/MatMul_1(^gradients/matmul3_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/matmul3_grad/MatMul_1*
_output_shapes

:2

?
gradients/relu7_grad/ReluGradReluGrad/gradients/matmul3_grad/tuple/control_dependencyrelu7*
T0*'
_output_shapes
:?????????2
a
gradients/add_6_grad/ShapeShapematmul2*
T0*
_output_shapes
:*
out_type0
p
gradients/add_6_grad/Shape_1Shapeadd_6/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/add_6_grad/SumSumgradients/relu7_grad/ReluGrad*gradients/add_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????2
?
gradients/add_6_grad/Sum_1Sumgradients/relu7_grad/ReluGrad,gradients/add_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:2
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
?
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_6_grad/Reshape*'
_output_shapes
:?????????2
?
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1*
_output_shapes
:2
?
gradients/matmul2_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencymatmul2/ReadVariableOp*
T0*'
_output_shapes
:?????????d*
transpose_a( *
transpose_b(
?
gradients/matmul2_grad/MatMul_1MatMulrelu6-gradients/add_6_grad/tuple/control_dependency*
T0*
_output_shapes

:d2*
transpose_a(*
transpose_b( 
q
'gradients/matmul2_grad/tuple/group_depsNoOp^gradients/matmul2_grad/MatMul ^gradients/matmul2_grad/MatMul_1
?
/gradients/matmul2_grad/tuple/control_dependencyIdentitygradients/matmul2_grad/MatMul(^gradients/matmul2_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/matmul2_grad/MatMul*'
_output_shapes
:?????????d
?
1gradients/matmul2_grad/tuple/control_dependency_1Identitygradients/matmul2_grad/MatMul_1(^gradients/matmul2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/matmul2_grad/MatMul_1*
_output_shapes

:d2
?
gradients/relu6_grad/ReluGradReluGrad/gradients/matmul2_grad/tuple/control_dependencyrelu6*
T0*'
_output_shapes
:?????????d
a
gradients/add_5_grad/ShapeShapematmul1*
T0*
_output_shapes
:*
out_type0
p
gradients/add_5_grad/Shape_1Shapeadd_5/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/add_5_grad/SumSumgradients/relu6_grad/ReluGrad*gradients/add_5_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????d
?
gradients/add_5_grad/Sum_1Sumgradients/relu6_grad/ReluGrad,gradients/add_5_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
?
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_5_grad/Reshape*'
_output_shapes
:?????????d
?
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1*
_output_shapes
:d
?
gradients/matmul1_grad/MatMulMatMul-gradients/add_5_grad/tuple/control_dependencymatmul1/ReadVariableOp*
T0*(
_output_shapes
:??????????	*
transpose_a( *
transpose_b(
?
gradients/matmul1_grad/MatMul_1MatMulreshape1-gradients/add_5_grad/tuple/control_dependency*
T0*
_output_shapes
:	?	d*
transpose_a(*
transpose_b( 
q
'gradients/matmul1_grad/tuple/group_depsNoOp^gradients/matmul1_grad/MatMul ^gradients/matmul1_grad/MatMul_1
?
/gradients/matmul1_grad/tuple/control_dependencyIdentitygradients/matmul1_grad/MatMul(^gradients/matmul1_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/matmul1_grad/MatMul*(
_output_shapes
:??????????	
?
1gradients/matmul1_grad/tuple/control_dependency_1Identitygradients/matmul1_grad/MatMul_1(^gradients/matmul1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/matmul1_grad/MatMul_1*
_output_shapes
:	?	d
b
gradients/reshape1_grad/ShapeShaperelu5*
T0*
_output_shapes
:*
out_type0
?
gradients/reshape1_grad/ReshapeReshape/gradients/matmul1_grad/tuple/control_dependencygradients/reshape1_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????@
?
gradients/relu5_grad/ReluGradReluGradgradients/reshape1_grad/Reshaperelu5*
T0*/
_output_shapes
:?????????@
b
gradients/add_4_grad/ShapeShapeConv2D_4*
T0*
_output_shapes
:*
out_type0
p
gradients/add_4_grad/Shape_1Shapeadd_4/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/add_4_grad/SumSumgradients/relu5_grad/ReluGrad*gradients/add_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????@
?
gradients/add_4_grad/Sum_1Sumgradients/relu5_grad/ReluGrad,gradients/add_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
?
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape*/
_output_shapes
:?????????@
?
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1*
_output_shapes
:@
?
gradients/Conv2D_4_grad/ShapeNShapeNrelu4Conv2D_4/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
?
+gradients/Conv2D_4_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_4_grad/ShapeNConv2D_4/ReadVariableOp-gradients/add_4_grad/tuple/control_dependency*
T0*/
_output_shapes
:?????????@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
,gradients/Conv2D_4_grad/Conv2DBackpropFilterConv2DBackpropFilterrelu4 gradients/Conv2D_4_grad/ShapeN:1-gradients/add_4_grad/tuple/control_dependency*
T0*&
_output_shapes
:@@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
(gradients/Conv2D_4_grad/tuple/group_depsNoOp-^gradients/Conv2D_4_grad/Conv2DBackpropFilter,^gradients/Conv2D_4_grad/Conv2DBackpropInput
?
0gradients/Conv2D_4_grad/tuple/control_dependencyIdentity+gradients/Conv2D_4_grad/Conv2DBackpropInput)^gradients/Conv2D_4_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_4_grad/Conv2DBackpropInput*/
_output_shapes
:?????????@
?
2gradients/Conv2D_4_grad/tuple/control_dependency_1Identity,gradients/Conv2D_4_grad/Conv2DBackpropFilter)^gradients/Conv2D_4_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_4_grad/Conv2DBackpropFilter*&
_output_shapes
:@@
?
gradients/relu4_grad/ReluGradReluGrad0gradients/Conv2D_4_grad/tuple/control_dependencyrelu4*
T0*/
_output_shapes
:?????????@
b
gradients/add_3_grad/ShapeShapeConv2D_3*
T0*
_output_shapes
:*
out_type0
p
gradients/add_3_grad/Shape_1Shapeadd_3/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/add_3_grad/SumSumgradients/relu4_grad/ReluGrad*gradients/add_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????@
?
gradients/add_3_grad/Sum_1Sumgradients/relu4_grad/ReluGrad,gradients/add_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
?
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape*/
_output_shapes
:?????????@
?
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1*
_output_shapes
:@
?
gradients/Conv2D_3_grad/ShapeNShapeNrelu3Conv2D_3/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
?
+gradients/Conv2D_3_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_3_grad/ShapeNConv2D_3/ReadVariableOp-gradients/add_3_grad/tuple/control_dependency*
T0*/
_output_shapes
:?????????0*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
,gradients/Conv2D_3_grad/Conv2DBackpropFilterConv2DBackpropFilterrelu3 gradients/Conv2D_3_grad/ShapeN:1-gradients/add_3_grad/tuple/control_dependency*
T0*&
_output_shapes
:0@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
(gradients/Conv2D_3_grad/tuple/group_depsNoOp-^gradients/Conv2D_3_grad/Conv2DBackpropFilter,^gradients/Conv2D_3_grad/Conv2DBackpropInput
?
0gradients/Conv2D_3_grad/tuple/control_dependencyIdentity+gradients/Conv2D_3_grad/Conv2DBackpropInput)^gradients/Conv2D_3_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_3_grad/Conv2DBackpropInput*/
_output_shapes
:?????????0
?
2gradients/Conv2D_3_grad/tuple/control_dependency_1Identity,gradients/Conv2D_3_grad/Conv2DBackpropFilter)^gradients/Conv2D_3_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_3_grad/Conv2DBackpropFilter*&
_output_shapes
:0@
?
gradients/relu3_grad/ReluGradReluGrad0gradients/Conv2D_3_grad/tuple/control_dependencyrelu3*
T0*/
_output_shapes
:?????????0
b
gradients/add_2_grad/ShapeShapeConv2D_2*
T0*
_output_shapes
:*
out_type0
p
gradients/add_2_grad/Shape_1Shapeadd_2/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/add_2_grad/SumSumgradients/relu3_grad/ReluGrad*gradients/add_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????0
?
gradients/add_2_grad/Sum_1Sumgradients/relu3_grad/ReluGrad,gradients/add_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
?
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape*/
_output_shapes
:?????????0
?
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1*
_output_shapes
:0
?
gradients/Conv2D_2_grad/ShapeNShapeNrelu2Conv2D_2/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
?
+gradients/Conv2D_2_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_2_grad/ShapeNConv2D_2/ReadVariableOp-gradients/add_2_grad/tuple/control_dependency*
T0*/
_output_shapes
:?????????/$*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
,gradients/Conv2D_2_grad/Conv2DBackpropFilterConv2DBackpropFilterrelu2 gradients/Conv2D_2_grad/ShapeN:1-gradients/add_2_grad/tuple/control_dependency*
T0*&
_output_shapes
:$0*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
(gradients/Conv2D_2_grad/tuple/group_depsNoOp-^gradients/Conv2D_2_grad/Conv2DBackpropFilter,^gradients/Conv2D_2_grad/Conv2DBackpropInput
?
0gradients/Conv2D_2_grad/tuple/control_dependencyIdentity+gradients/Conv2D_2_grad/Conv2DBackpropInput)^gradients/Conv2D_2_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_2_grad/Conv2DBackpropInput*/
_output_shapes
:?????????/$
?
2gradients/Conv2D_2_grad/tuple/control_dependency_1Identity,gradients/Conv2D_2_grad/Conv2DBackpropFilter)^gradients/Conv2D_2_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_2_grad/Conv2DBackpropFilter*&
_output_shapes
:$0
?
gradients/relu2_grad/ReluGradReluGrad0gradients/Conv2D_2_grad/tuple/control_dependencyrelu2*
T0*/
_output_shapes
:?????????/$
b
gradients/add_1_grad/ShapeShapeConv2D_1*
T0*
_output_shapes
:*
out_type0
p
gradients/add_1_grad/Shape_1Shapeadd_1/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/add_1_grad/SumSumgradients/relu2_grad/ReluGrad*gradients/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????/$
?
gradients/add_1_grad/Sum_1Sumgradients/relu2_grad/ReluGrad,gradients/add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:$
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
?
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape*/
_output_shapes
:?????????/$
?
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:$
?
gradients/Conv2D_1_grad/ShapeNShapeNrelu1Conv2D_1/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
?
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNConv2D_1/ReadVariableOp-gradients/add_1_grad/tuple/control_dependency*
T0*/
_output_shapes
:?????????b*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterrelu1 gradients/Conv2D_1_grad/ShapeN:1-gradients/add_1_grad/tuple/control_dependency*
T0*&
_output_shapes
:$*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
(gradients/Conv2D_1_grad/tuple/group_depsNoOp-^gradients/Conv2D_1_grad/Conv2DBackpropFilter,^gradients/Conv2D_1_grad/Conv2DBackpropInput
?
0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput*/
_output_shapes
:?????????b
?
2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter*&
_output_shapes
:$
?
gradients/relu1_grad/ReluGradReluGrad0gradients/Conv2D_1_grad/tuple/control_dependencyrelu1*
T0*/
_output_shapes
:?????????b
^
gradients/add_grad/ShapeShapeConv2D*
T0*
_output_shapes
:*
out_type0
l
gradients/add_grad/Shape_1Shapeadd/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/add_grad/SumSumgradients/relu1_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????b
?
gradients/add_grad/Sum_1Sumgradients/relu1_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
?
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*/
_output_shapes
:?????????b
?
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:
?
gradients/Conv2D_grad/ShapeNShapeNinput_xConv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
?
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNConv2D/ReadVariableOp+gradients/add_grad/tuple/control_dependency*
T0*0
_output_shapes
:?????????B?*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinput_xgradients/Conv2D_grad/ShapeN:1+gradients/add_grad/tuple/control_dependency*
T0*&
_output_shapes
:*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingVALID*
strides
*
use_cudnn_on_gpu(
?
&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput
?
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:?????????B?
?
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
?
%beta1_power/Initializer/initial_valueConst*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
valueB
 *fff?
?
beta1_powerVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namebeta1_power
?
,beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power*
_class
loc:@Variable*
_output_shapes
: 
g
beta1_power/AssignAssignVariableOpbeta1_power%beta1_power/Initializer/initial_value*
dtype0
?
beta1_power/Read/ReadVariableOpReadVariableOpbeta1_power*
_class
loc:@Variable*
_output_shapes
: *
dtype0
?
%beta2_power/Initializer/initial_valueConst*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
valueB
 *w??
?
beta2_powerVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namebeta2_power
?
,beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power*
_class
loc:@Variable*
_output_shapes
: 
g
beta2_power/AssignAssignVariableOpbeta2_power%beta2_power/Initializer/initial_value*
dtype0
?
beta2_power/Read/ReadVariableOpReadVariableOpbeta2_power*
_class
loc:@Variable*
_output_shapes
: *
dtype0
?
*wc1/Adam/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc1*
_output_shapes
:*
dtype0*%
valueB"            
}
 wc1/Adam/Initializer/zeros/ConstConst*
_class

loc:@wc1*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc1/Adam/Initializer/zerosFill*wc1/Adam/Initializer/zeros/shape_as_tensor wc1/Adam/Initializer/zeros/Const*
T0*
_class

loc:@wc1*&
_output_shapes
:*

index_type0
?
wc1/AdamVarHandleOp*
_class

loc:@wc1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*
shared_name
wc1/Adam
y
)wc1/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc1/Adam*
_class

loc:@wc1*
_output_shapes
: 
V
wc1/Adam/AssignAssignVariableOpwc1/Adamwc1/Adam/Initializer/zeros*
dtype0
?
wc1/Adam/Read/ReadVariableOpReadVariableOpwc1/Adam*
_class

loc:@wc1*&
_output_shapes
:*
dtype0
?
,wc1/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc1*
_output_shapes
:*
dtype0*%
valueB"            

"wc1/Adam_1/Initializer/zeros/ConstConst*
_class

loc:@wc1*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc1/Adam_1/Initializer/zerosFill,wc1/Adam_1/Initializer/zeros/shape_as_tensor"wc1/Adam_1/Initializer/zeros/Const*
T0*
_class

loc:@wc1*&
_output_shapes
:*

index_type0
?

wc1/Adam_1VarHandleOp*
_class

loc:@wc1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*
shared_name
wc1/Adam_1
}
+wc1/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
wc1/Adam_1*
_class

loc:@wc1*
_output_shapes
: 
\
wc1/Adam_1/AssignAssignVariableOp
wc1/Adam_1wc1/Adam_1/Initializer/zeros*
dtype0
?
wc1/Adam_1/Read/ReadVariableOpReadVariableOp
wc1/Adam_1*
_class

loc:@wc1*&
_output_shapes
:*
dtype0
?
Variable/Adam/Initializer/zerosConst*
_class
loc:@Variable*
_output_shapes
:*
dtype0*
valueB*    
?
Variable/AdamVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*
shared_nameVariable/Adam
?
.Variable/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable/Adam*
_class
loc:@Variable*
_output_shapes
: 
e
Variable/Adam/AssignAssignVariableOpVariable/AdamVariable/Adam/Initializer/zeros*
dtype0
?
!Variable/Adam/Read/ReadVariableOpReadVariableOpVariable/Adam*
_class
loc:@Variable*
_output_shapes
:*
dtype0
?
!Variable/Adam_1/Initializer/zerosConst*
_class
loc:@Variable*
_output_shapes
:*
dtype0*
valueB*    
?
Variable/Adam_1VarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:* 
shared_nameVariable/Adam_1
?
0Variable/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable/Adam_1*
_class
loc:@Variable*
_output_shapes
: 
k
Variable/Adam_1/AssignAssignVariableOpVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
dtype0
?
#Variable/Adam_1/Read/ReadVariableOpReadVariableOpVariable/Adam_1*
_class
loc:@Variable*
_output_shapes
:*
dtype0
?
*wc2/Adam/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc2*
_output_shapes
:*
dtype0*%
valueB"         $   
}
 wc2/Adam/Initializer/zeros/ConstConst*
_class

loc:@wc2*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc2/Adam/Initializer/zerosFill*wc2/Adam/Initializer/zeros/shape_as_tensor wc2/Adam/Initializer/zeros/Const*
T0*
_class

loc:@wc2*&
_output_shapes
:$*

index_type0
?
wc2/AdamVarHandleOp*
_class

loc:@wc2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:$*
shared_name
wc2/Adam
y
)wc2/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc2/Adam*
_class

loc:@wc2*
_output_shapes
: 
V
wc2/Adam/AssignAssignVariableOpwc2/Adamwc2/Adam/Initializer/zeros*
dtype0
?
wc2/Adam/Read/ReadVariableOpReadVariableOpwc2/Adam*
_class

loc:@wc2*&
_output_shapes
:$*
dtype0
?
,wc2/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc2*
_output_shapes
:*
dtype0*%
valueB"         $   

"wc2/Adam_1/Initializer/zeros/ConstConst*
_class

loc:@wc2*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc2/Adam_1/Initializer/zerosFill,wc2/Adam_1/Initializer/zeros/shape_as_tensor"wc2/Adam_1/Initializer/zeros/Const*
T0*
_class

loc:@wc2*&
_output_shapes
:$*

index_type0
?

wc2/Adam_1VarHandleOp*
_class

loc:@wc2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:$*
shared_name
wc2/Adam_1
}
+wc2/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
wc2/Adam_1*
_class

loc:@wc2*
_output_shapes
: 
\
wc2/Adam_1/AssignAssignVariableOp
wc2/Adam_1wc2/Adam_1/Initializer/zeros*
dtype0
?
wc2/Adam_1/Read/ReadVariableOpReadVariableOp
wc2/Adam_1*
_class

loc:@wc2*&
_output_shapes
:$*
dtype0
?
!Variable_1/Adam/Initializer/zerosConst*
_class
loc:@Variable_1*
_output_shapes
:$*
dtype0*
valueB$*    
?
Variable_1/AdamVarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:$* 
shared_nameVariable_1/Adam
?
0Variable_1/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_1/Adam*
_class
loc:@Variable_1*
_output_shapes
: 
k
Variable_1/Adam/AssignAssignVariableOpVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
dtype0
?
#Variable_1/Adam/Read/ReadVariableOpReadVariableOpVariable_1/Adam*
_class
loc:@Variable_1*
_output_shapes
:$*
dtype0
?
#Variable_1/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_1*
_output_shapes
:$*
dtype0*
valueB$*    
?
Variable_1/Adam_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:$*"
shared_nameVariable_1/Adam_1
?
2Variable_1/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_1/Adam_1*
_class
loc:@Variable_1*
_output_shapes
: 
q
Variable_1/Adam_1/AssignAssignVariableOpVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
dtype0
?
%Variable_1/Adam_1/Read/ReadVariableOpReadVariableOpVariable_1/Adam_1*
_class
loc:@Variable_1*
_output_shapes
:$*
dtype0
?
*wc3/Adam/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc3*
_output_shapes
:*
dtype0*%
valueB"      $   0   
}
 wc3/Adam/Initializer/zeros/ConstConst*
_class

loc:@wc3*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc3/Adam/Initializer/zerosFill*wc3/Adam/Initializer/zeros/shape_as_tensor wc3/Adam/Initializer/zeros/Const*
T0*
_class

loc:@wc3*&
_output_shapes
:$0*

index_type0
?
wc3/AdamVarHandleOp*
_class

loc:@wc3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:$0*
shared_name
wc3/Adam
y
)wc3/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc3/Adam*
_class

loc:@wc3*
_output_shapes
: 
V
wc3/Adam/AssignAssignVariableOpwc3/Adamwc3/Adam/Initializer/zeros*
dtype0
?
wc3/Adam/Read/ReadVariableOpReadVariableOpwc3/Adam*
_class

loc:@wc3*&
_output_shapes
:$0*
dtype0
?
,wc3/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc3*
_output_shapes
:*
dtype0*%
valueB"      $   0   

"wc3/Adam_1/Initializer/zeros/ConstConst*
_class

loc:@wc3*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc3/Adam_1/Initializer/zerosFill,wc3/Adam_1/Initializer/zeros/shape_as_tensor"wc3/Adam_1/Initializer/zeros/Const*
T0*
_class

loc:@wc3*&
_output_shapes
:$0*

index_type0
?

wc3/Adam_1VarHandleOp*
_class

loc:@wc3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:$0*
shared_name
wc3/Adam_1
}
+wc3/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
wc3/Adam_1*
_class

loc:@wc3*
_output_shapes
: 
\
wc3/Adam_1/AssignAssignVariableOp
wc3/Adam_1wc3/Adam_1/Initializer/zeros*
dtype0
?
wc3/Adam_1/Read/ReadVariableOpReadVariableOp
wc3/Adam_1*
_class

loc:@wc3*&
_output_shapes
:$0*
dtype0
?
!Variable_2/Adam/Initializer/zerosConst*
_class
loc:@Variable_2*
_output_shapes
:0*
dtype0*
valueB0*    
?
Variable_2/AdamVarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0* 
shared_nameVariable_2/Adam
?
0Variable_2/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_2/Adam*
_class
loc:@Variable_2*
_output_shapes
: 
k
Variable_2/Adam/AssignAssignVariableOpVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
dtype0
?
#Variable_2/Adam/Read/ReadVariableOpReadVariableOpVariable_2/Adam*
_class
loc:@Variable_2*
_output_shapes
:0*
dtype0
?
#Variable_2/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_2*
_output_shapes
:0*
dtype0*
valueB0*    
?
Variable_2/Adam_1VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*"
shared_nameVariable_2/Adam_1
?
2Variable_2/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_2/Adam_1*
_class
loc:@Variable_2*
_output_shapes
: 
q
Variable_2/Adam_1/AssignAssignVariableOpVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
dtype0
?
%Variable_2/Adam_1/Read/ReadVariableOpReadVariableOpVariable_2/Adam_1*
_class
loc:@Variable_2*
_output_shapes
:0*
dtype0
?
*wc4/Adam/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc4*
_output_shapes
:*
dtype0*%
valueB"      0   @   
}
 wc4/Adam/Initializer/zeros/ConstConst*
_class

loc:@wc4*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc4/Adam/Initializer/zerosFill*wc4/Adam/Initializer/zeros/shape_as_tensor wc4/Adam/Initializer/zeros/Const*
T0*
_class

loc:@wc4*&
_output_shapes
:0@*

index_type0
?
wc4/AdamVarHandleOp*
_class

loc:@wc4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0@*
shared_name
wc4/Adam
y
)wc4/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc4/Adam*
_class

loc:@wc4*
_output_shapes
: 
V
wc4/Adam/AssignAssignVariableOpwc4/Adamwc4/Adam/Initializer/zeros*
dtype0
?
wc4/Adam/Read/ReadVariableOpReadVariableOpwc4/Adam*
_class

loc:@wc4*&
_output_shapes
:0@*
dtype0
?
,wc4/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc4*
_output_shapes
:*
dtype0*%
valueB"      0   @   

"wc4/Adam_1/Initializer/zeros/ConstConst*
_class

loc:@wc4*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc4/Adam_1/Initializer/zerosFill,wc4/Adam_1/Initializer/zeros/shape_as_tensor"wc4/Adam_1/Initializer/zeros/Const*
T0*
_class

loc:@wc4*&
_output_shapes
:0@*

index_type0
?

wc4/Adam_1VarHandleOp*
_class

loc:@wc4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0@*
shared_name
wc4/Adam_1
}
+wc4/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
wc4/Adam_1*
_class

loc:@wc4*
_output_shapes
: 
\
wc4/Adam_1/AssignAssignVariableOp
wc4/Adam_1wc4/Adam_1/Initializer/zeros*
dtype0
?
wc4/Adam_1/Read/ReadVariableOpReadVariableOp
wc4/Adam_1*
_class

loc:@wc4*&
_output_shapes
:0@*
dtype0
?
!Variable_3/Adam/Initializer/zerosConst*
_class
loc:@Variable_3*
_output_shapes
:@*
dtype0*
valueB@*    
?
Variable_3/AdamVarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@* 
shared_nameVariable_3/Adam
?
0Variable_3/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_3/Adam*
_class
loc:@Variable_3*
_output_shapes
: 
k
Variable_3/Adam/AssignAssignVariableOpVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
dtype0
?
#Variable_3/Adam/Read/ReadVariableOpReadVariableOpVariable_3/Adam*
_class
loc:@Variable_3*
_output_shapes
:@*
dtype0
?
#Variable_3/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_3*
_output_shapes
:@*
dtype0*
valueB@*    
?
Variable_3/Adam_1VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*"
shared_nameVariable_3/Adam_1
?
2Variable_3/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_3/Adam_1*
_class
loc:@Variable_3*
_output_shapes
: 
q
Variable_3/Adam_1/AssignAssignVariableOpVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
dtype0
?
%Variable_3/Adam_1/Read/ReadVariableOpReadVariableOpVariable_3/Adam_1*
_class
loc:@Variable_3*
_output_shapes
:@*
dtype0
?
*wc5/Adam/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc5*
_output_shapes
:*
dtype0*%
valueB"      @   @   
}
 wc5/Adam/Initializer/zeros/ConstConst*
_class

loc:@wc5*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc5/Adam/Initializer/zerosFill*wc5/Adam/Initializer/zeros/shape_as_tensor wc5/Adam/Initializer/zeros/Const*
T0*
_class

loc:@wc5*&
_output_shapes
:@@*

index_type0
?
wc5/AdamVarHandleOp*
_class

loc:@wc5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@@*
shared_name
wc5/Adam
y
)wc5/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpwc5/Adam*
_class

loc:@wc5*
_output_shapes
: 
V
wc5/Adam/AssignAssignVariableOpwc5/Adamwc5/Adam/Initializer/zeros*
dtype0
?
wc5/Adam/Read/ReadVariableOpReadVariableOpwc5/Adam*
_class

loc:@wc5*&
_output_shapes
:@@*
dtype0
?
,wc5/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class

loc:@wc5*
_output_shapes
:*
dtype0*%
valueB"      @   @   

"wc5/Adam_1/Initializer/zeros/ConstConst*
_class

loc:@wc5*
_output_shapes
: *
dtype0*
valueB
 *    
?
wc5/Adam_1/Initializer/zerosFill,wc5/Adam_1/Initializer/zeros/shape_as_tensor"wc5/Adam_1/Initializer/zeros/Const*
T0*
_class

loc:@wc5*&
_output_shapes
:@@*

index_type0
?

wc5/Adam_1VarHandleOp*
_class

loc:@wc5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@@*
shared_name
wc5/Adam_1
}
+wc5/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
wc5/Adam_1*
_class

loc:@wc5*
_output_shapes
: 
\
wc5/Adam_1/AssignAssignVariableOp
wc5/Adam_1wc5/Adam_1/Initializer/zeros*
dtype0
?
wc5/Adam_1/Read/ReadVariableOpReadVariableOp
wc5/Adam_1*
_class

loc:@wc5*&
_output_shapes
:@@*
dtype0
?
!Variable_4/Adam/Initializer/zerosConst*
_class
loc:@Variable_4*
_output_shapes
:@*
dtype0*
valueB@*    
?
Variable_4/AdamVarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@* 
shared_nameVariable_4/Adam
?
0Variable_4/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_4/Adam*
_class
loc:@Variable_4*
_output_shapes
: 
k
Variable_4/Adam/AssignAssignVariableOpVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
dtype0
?
#Variable_4/Adam/Read/ReadVariableOpReadVariableOpVariable_4/Adam*
_class
loc:@Variable_4*
_output_shapes
:@*
dtype0
?
#Variable_4/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_4*
_output_shapes
:@*
dtype0*
valueB@*    
?
Variable_4/Adam_1VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*"
shared_nameVariable_4/Adam_1
?
2Variable_4/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_4/Adam_1*
_class
loc:@Variable_4*
_output_shapes
: 
q
Variable_4/Adam_1/AssignAssignVariableOpVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
dtype0
?
%Variable_4/Adam_1/Read/ReadVariableOpReadVariableOpVariable_4/Adam_1*
_class
loc:@Variable_4*
_output_shapes
:@*
dtype0
?
*fc2/Adam/Initializer/zeros/shape_as_tensorConst*
_class

loc:@fc2*
_output_shapes
:*
dtype0*
valueB"?  d   
}
 fc2/Adam/Initializer/zeros/ConstConst*
_class

loc:@fc2*
_output_shapes
: *
dtype0*
valueB
 *    
?
fc2/Adam/Initializer/zerosFill*fc2/Adam/Initializer/zeros/shape_as_tensor fc2/Adam/Initializer/zeros/Const*
T0*
_class

loc:@fc2*
_output_shapes
:	?	d*

index_type0
?
fc2/AdamVarHandleOp*
_class

loc:@fc2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	?	d*
shared_name
fc2/Adam
y
)fc2/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc2/Adam*
_class

loc:@fc2*
_output_shapes
: 
V
fc2/Adam/AssignAssignVariableOpfc2/Adamfc2/Adam/Initializer/zeros*
dtype0
~
fc2/Adam/Read/ReadVariableOpReadVariableOpfc2/Adam*
_class

loc:@fc2*
_output_shapes
:	?	d*
dtype0
?
,fc2/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class

loc:@fc2*
_output_shapes
:*
dtype0*
valueB"?  d   

"fc2/Adam_1/Initializer/zeros/ConstConst*
_class

loc:@fc2*
_output_shapes
: *
dtype0*
valueB
 *    
?
fc2/Adam_1/Initializer/zerosFill,fc2/Adam_1/Initializer/zeros/shape_as_tensor"fc2/Adam_1/Initializer/zeros/Const*
T0*
_class

loc:@fc2*
_output_shapes
:	?	d*

index_type0
?

fc2/Adam_1VarHandleOp*
_class

loc:@fc2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	?	d*
shared_name
fc2/Adam_1
}
+fc2/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
fc2/Adam_1*
_class

loc:@fc2*
_output_shapes
: 
\
fc2/Adam_1/AssignAssignVariableOp
fc2/Adam_1fc2/Adam_1/Initializer/zeros*
dtype0
?
fc2/Adam_1/Read/ReadVariableOpReadVariableOp
fc2/Adam_1*
_class

loc:@fc2*
_output_shapes
:	?	d*
dtype0
?
!Variable_5/Adam/Initializer/zerosConst*
_class
loc:@Variable_5*
_output_shapes
:d*
dtype0*
valueBd*    
?
Variable_5/AdamVarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:d* 
shared_nameVariable_5/Adam
?
0Variable_5/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_5/Adam*
_class
loc:@Variable_5*
_output_shapes
: 
k
Variable_5/Adam/AssignAssignVariableOpVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
dtype0
?
#Variable_5/Adam/Read/ReadVariableOpReadVariableOpVariable_5/Adam*
_class
loc:@Variable_5*
_output_shapes
:d*
dtype0
?
#Variable_5/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_5*
_output_shapes
:d*
dtype0*
valueBd*    
?
Variable_5/Adam_1VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:d*"
shared_nameVariable_5/Adam_1
?
2Variable_5/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_5/Adam_1*
_class
loc:@Variable_5*
_output_shapes
: 
q
Variable_5/Adam_1/AssignAssignVariableOpVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
dtype0
?
%Variable_5/Adam_1/Read/ReadVariableOpReadVariableOpVariable_5/Adam_1*
_class
loc:@Variable_5*
_output_shapes
:d*
dtype0
?
*fc3/Adam/Initializer/zeros/shape_as_tensorConst*
_class

loc:@fc3*
_output_shapes
:*
dtype0*
valueB"d   2   
}
 fc3/Adam/Initializer/zeros/ConstConst*
_class

loc:@fc3*
_output_shapes
: *
dtype0*
valueB
 *    
?
fc3/Adam/Initializer/zerosFill*fc3/Adam/Initializer/zeros/shape_as_tensor fc3/Adam/Initializer/zeros/Const*
T0*
_class

loc:@fc3*
_output_shapes

:d2*

index_type0
?
fc3/AdamVarHandleOp*
_class

loc:@fc3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:d2*
shared_name
fc3/Adam
y
)fc3/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc3/Adam*
_class

loc:@fc3*
_output_shapes
: 
V
fc3/Adam/AssignAssignVariableOpfc3/Adamfc3/Adam/Initializer/zeros*
dtype0
}
fc3/Adam/Read/ReadVariableOpReadVariableOpfc3/Adam*
_class

loc:@fc3*
_output_shapes

:d2*
dtype0
?
,fc3/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class

loc:@fc3*
_output_shapes
:*
dtype0*
valueB"d   2   

"fc3/Adam_1/Initializer/zeros/ConstConst*
_class

loc:@fc3*
_output_shapes
: *
dtype0*
valueB
 *    
?
fc3/Adam_1/Initializer/zerosFill,fc3/Adam_1/Initializer/zeros/shape_as_tensor"fc3/Adam_1/Initializer/zeros/Const*
T0*
_class

loc:@fc3*
_output_shapes

:d2*

index_type0
?

fc3/Adam_1VarHandleOp*
_class

loc:@fc3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:d2*
shared_name
fc3/Adam_1
}
+fc3/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
fc3/Adam_1*
_class

loc:@fc3*
_output_shapes
: 
\
fc3/Adam_1/AssignAssignVariableOp
fc3/Adam_1fc3/Adam_1/Initializer/zeros*
dtype0
?
fc3/Adam_1/Read/ReadVariableOpReadVariableOp
fc3/Adam_1*
_class

loc:@fc3*
_output_shapes

:d2*
dtype0
?
!Variable_6/Adam/Initializer/zerosConst*
_class
loc:@Variable_6*
_output_shapes
:2*
dtype0*
valueB2*    
?
Variable_6/AdamVarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:2* 
shared_nameVariable_6/Adam
?
0Variable_6/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_6/Adam*
_class
loc:@Variable_6*
_output_shapes
: 
k
Variable_6/Adam/AssignAssignVariableOpVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
dtype0
?
#Variable_6/Adam/Read/ReadVariableOpReadVariableOpVariable_6/Adam*
_class
loc:@Variable_6*
_output_shapes
:2*
dtype0
?
#Variable_6/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_6*
_output_shapes
:2*
dtype0*
valueB2*    
?
Variable_6/Adam_1VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:2*"
shared_nameVariable_6/Adam_1
?
2Variable_6/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_6/Adam_1*
_class
loc:@Variable_6*
_output_shapes
: 
q
Variable_6/Adam_1/AssignAssignVariableOpVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
dtype0
?
%Variable_6/Adam_1/Read/ReadVariableOpReadVariableOpVariable_6/Adam_1*
_class
loc:@Variable_6*
_output_shapes
:2*
dtype0
?
fc4/Adam/Initializer/zerosConst*
_class

loc:@fc4*
_output_shapes

:2
*
dtype0*
valueB2
*    
?
fc4/AdamVarHandleOp*
_class

loc:@fc4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:2
*
shared_name
fc4/Adam
y
)fc4/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc4/Adam*
_class

loc:@fc4*
_output_shapes
: 
V
fc4/Adam/AssignAssignVariableOpfc4/Adamfc4/Adam/Initializer/zeros*
dtype0
}
fc4/Adam/Read/ReadVariableOpReadVariableOpfc4/Adam*
_class

loc:@fc4*
_output_shapes

:2
*
dtype0
?
fc4/Adam_1/Initializer/zerosConst*
_class

loc:@fc4*
_output_shapes

:2
*
dtype0*
valueB2
*    
?

fc4/Adam_1VarHandleOp*
_class

loc:@fc4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:2
*
shared_name
fc4/Adam_1
}
+fc4/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
fc4/Adam_1*
_class

loc:@fc4*
_output_shapes
: 
\
fc4/Adam_1/AssignAssignVariableOp
fc4/Adam_1fc4/Adam_1/Initializer/zeros*
dtype0
?
fc4/Adam_1/Read/ReadVariableOpReadVariableOp
fc4/Adam_1*
_class

loc:@fc4*
_output_shapes

:2
*
dtype0
?
!Variable_7/Adam/Initializer/zerosConst*
_class
loc:@Variable_7*
_output_shapes
:
*
dtype0*
valueB
*    
?
Variable_7/AdamVarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
* 
shared_nameVariable_7/Adam
?
0Variable_7/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_7/Adam*
_class
loc:@Variable_7*
_output_shapes
: 
k
Variable_7/Adam/AssignAssignVariableOpVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
dtype0
?
#Variable_7/Adam/Read/ReadVariableOpReadVariableOpVariable_7/Adam*
_class
loc:@Variable_7*
_output_shapes
:
*
dtype0
?
#Variable_7/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_7*
_output_shapes
:
*
dtype0*
valueB
*    
?
Variable_7/Adam_1VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*"
shared_nameVariable_7/Adam_1
?
2Variable_7/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_7/Adam_1*
_class
loc:@Variable_7*
_output_shapes
: 
q
Variable_7/Adam_1/AssignAssignVariableOpVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
dtype0
?
%Variable_7/Adam_1/Read/ReadVariableOpReadVariableOpVariable_7/Adam_1*
_class
loc:@Variable_7*
_output_shapes
:
*
dtype0
?
fc5/Adam/Initializer/zerosConst*
_class

loc:@fc5*
_output_shapes

:
*
dtype0*
valueB
*    
?
fc5/AdamVarHandleOp*
_class

loc:@fc5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:
*
shared_name
fc5/Adam
y
)fc5/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpfc5/Adam*
_class

loc:@fc5*
_output_shapes
: 
V
fc5/Adam/AssignAssignVariableOpfc5/Adamfc5/Adam/Initializer/zeros*
dtype0
}
fc5/Adam/Read/ReadVariableOpReadVariableOpfc5/Adam*
_class

loc:@fc5*
_output_shapes

:
*
dtype0
?
fc5/Adam_1/Initializer/zerosConst*
_class

loc:@fc5*
_output_shapes

:
*
dtype0*
valueB
*    
?

fc5/Adam_1VarHandleOp*
_class

loc:@fc5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:
*
shared_name
fc5/Adam_1
}
+fc5/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
fc5/Adam_1*
_class

loc:@fc5*
_output_shapes
: 
\
fc5/Adam_1/AssignAssignVariableOp
fc5/Adam_1fc5/Adam_1/Initializer/zeros*
dtype0
?
fc5/Adam_1/Read/ReadVariableOpReadVariableOp
fc5/Adam_1*
_class

loc:@fc5*
_output_shapes

:
*
dtype0
?
!Variable_8/Adam/Initializer/zerosConst*
_class
loc:@Variable_8*
_output_shapes
:*
dtype0*
valueB*    
?
Variable_8/AdamVarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:* 
shared_nameVariable_8/Adam
?
0Variable_8/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_8/Adam*
_class
loc:@Variable_8*
_output_shapes
: 
k
Variable_8/Adam/AssignAssignVariableOpVariable_8/Adam!Variable_8/Adam/Initializer/zeros*
dtype0
?
#Variable_8/Adam/Read/ReadVariableOpReadVariableOpVariable_8/Adam*
_class
loc:@Variable_8*
_output_shapes
:*
dtype0
?
#Variable_8/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_8*
_output_shapes
:*
dtype0*
valueB*    
?
Variable_8/Adam_1VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*"
shared_nameVariable_8/Adam_1
?
2Variable_8/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_8/Adam_1*
_class
loc:@Variable_8*
_output_shapes
: 
q
Variable_8/Adam_1/AssignAssignVariableOpVariable_8/Adam_1#Variable_8/Adam_1/Initializer/zeros*
dtype0
?
%Variable_8/Adam_1/Read/ReadVariableOpReadVariableOpVariable_8/Adam_1*
_class
loc:@Variable_8*
_output_shapes
:*
dtype0
W
Adam/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *??8
O

Adam/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
O

Adam/beta2Const*
_output_shapes
: *
dtype0*
valueB
 *w??
Q
Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *w?+2
t
0Adam/update_wc1/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
v
2Adam/update_wc1/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
!Adam/update_wc1/ResourceApplyAdamResourceApplyAdamwc1wc1/Adam
wc1/Adam_10Adam/update_wc1/ResourceApplyAdam/ReadVariableOp2Adam/update_wc1/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
T0*
_class

loc:@wc1*
use_locking( *
use_nesterov( 
y
5Adam/update_Variable/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
{
7Adam/update_Variable/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
&Adam/update_Variable/ResourceApplyAdamResourceApplyAdamVariableVariable/AdamVariable/Adam_15Adam/update_Variable/ResourceApplyAdam/ReadVariableOp7Adam/update_Variable/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable*
use_locking( *
use_nesterov( 
t
0Adam/update_wc2/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
v
2Adam/update_wc2/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
!Adam/update_wc2/ResourceApplyAdamResourceApplyAdamwc2wc2/Adam
wc2/Adam_10Adam/update_wc2/ResourceApplyAdam/ReadVariableOp2Adam/update_wc2/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*
T0*
_class

loc:@wc2*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_1/ResourceApplyAdamResourceApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_17Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1*
use_locking( *
use_nesterov( 
t
0Adam/update_wc3/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
v
2Adam/update_wc3/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
!Adam/update_wc3/ResourceApplyAdamResourceApplyAdamwc3wc3/Adam
wc3/Adam_10Adam/update_wc3/ResourceApplyAdam/ReadVariableOp2Adam/update_wc3/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_2_grad/tuple/control_dependency_1*
T0*
_class

loc:@wc3*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_2/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_2/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_2/ResourceApplyAdamResourceApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_17Adam/update_Variable_2/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_2/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_2_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_2*
use_locking( *
use_nesterov( 
t
0Adam/update_wc4/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
v
2Adam/update_wc4/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
!Adam/update_wc4/ResourceApplyAdamResourceApplyAdamwc4wc4/Adam
wc4/Adam_10Adam/update_wc4/ResourceApplyAdam/ReadVariableOp2Adam/update_wc4/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_3_grad/tuple/control_dependency_1*
T0*
_class

loc:@wc4*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_3/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_3/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_3/ResourceApplyAdamResourceApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_17Adam/update_Variable_3/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_3/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_3_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_3*
use_locking( *
use_nesterov( 
t
0Adam/update_wc5/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
v
2Adam/update_wc5/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
!Adam/update_wc5/ResourceApplyAdamResourceApplyAdamwc5wc5/Adam
wc5/Adam_10Adam/update_wc5/ResourceApplyAdam/ReadVariableOp2Adam/update_wc5/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_4_grad/tuple/control_dependency_1*
T0*
_class

loc:@wc5*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_4/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_4/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_4/ResourceApplyAdamResourceApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_17Adam/update_Variable_4/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_4/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_4_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_4*
use_locking( *
use_nesterov( 
t
0Adam/update_fc2/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
v
2Adam/update_fc2/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
!Adam/update_fc2/ResourceApplyAdamResourceApplyAdamfc2fc2/Adam
fc2/Adam_10Adam/update_fc2/ResourceApplyAdam/ReadVariableOp2Adam/update_fc2/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/matmul1_grad/tuple/control_dependency_1*
T0*
_class

loc:@fc2*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_5/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_5/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_5/ResourceApplyAdamResourceApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_17Adam/update_Variable_5/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_5/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_5_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_5*
use_locking( *
use_nesterov( 
t
0Adam/update_fc3/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
v
2Adam/update_fc3/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
!Adam/update_fc3/ResourceApplyAdamResourceApplyAdamfc3fc3/Adam
fc3/Adam_10Adam/update_fc3/ResourceApplyAdam/ReadVariableOp2Adam/update_fc3/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/matmul2_grad/tuple/control_dependency_1*
T0*
_class

loc:@fc3*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_6/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_6/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_6/ResourceApplyAdamResourceApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_17Adam/update_Variable_6/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_6/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_6_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_6*
use_locking( *
use_nesterov( 
t
0Adam/update_fc4/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
v
2Adam/update_fc4/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
!Adam/update_fc4/ResourceApplyAdamResourceApplyAdamfc4fc4/Adam
fc4/Adam_10Adam/update_fc4/ResourceApplyAdam/ReadVariableOp2Adam/update_fc4/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/matmul3_grad/tuple/control_dependency_1*
T0*
_class

loc:@fc4*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_7/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_7/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_7/ResourceApplyAdamResourceApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_17Adam/update_Variable_7/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_7/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_7_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_7*
use_locking( *
use_nesterov( 
t
0Adam/update_fc5/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
v
2Adam/update_fc5/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
!Adam/update_fc5/ResourceApplyAdamResourceApplyAdamfc5fc5/Adam
fc5/Adam_10Adam/update_fc5/ResourceApplyAdam/ReadVariableOp2Adam/update_fc5/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/matmul4_grad/tuple/control_dependency_1*
T0*
_class

loc:@fc5*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_8/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_8/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_8/ResourceApplyAdamResourceApplyAdam
Variable_8Variable_8/AdamVariable_8/Adam_17Adam/update_Variable_8/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_8/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_8_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_8*
use_locking( *
use_nesterov( 
?
Adam/ReadVariableOpReadVariableOpbeta1_power'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam)^Adam/update_Variable_8/ResourceApplyAdam"^Adam/update_fc2/ResourceApplyAdam"^Adam/update_fc3/ResourceApplyAdam"^Adam/update_fc4/ResourceApplyAdam"^Adam/update_fc5/ResourceApplyAdam"^Adam/update_wc1/ResourceApplyAdam"^Adam/update_wc2/ResourceApplyAdam"^Adam/update_wc3/ResourceApplyAdam"^Adam/update_wc4/ResourceApplyAdam"^Adam/update_wc5/ResourceApplyAdam*
_output_shapes
: *
dtype0
n
Adam/mulMulAdam/ReadVariableOp
Adam/beta1*
T0*
_class
loc:@Variable*
_output_shapes
: 
j
Adam/AssignVariableOpAssignVariableOpbeta1_powerAdam/mul*
_class
loc:@Variable*
dtype0
?
Adam/ReadVariableOp_1ReadVariableOpbeta1_power^Adam/AssignVariableOp'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam)^Adam/update_Variable_8/ResourceApplyAdam"^Adam/update_fc2/ResourceApplyAdam"^Adam/update_fc3/ResourceApplyAdam"^Adam/update_fc4/ResourceApplyAdam"^Adam/update_fc5/ResourceApplyAdam"^Adam/update_wc1/ResourceApplyAdam"^Adam/update_wc2/ResourceApplyAdam"^Adam/update_wc3/ResourceApplyAdam"^Adam/update_wc4/ResourceApplyAdam"^Adam/update_wc5/ResourceApplyAdam*
_class
loc:@Variable*
_output_shapes
: *
dtype0
?
Adam/ReadVariableOp_2ReadVariableOpbeta2_power'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam)^Adam/update_Variable_8/ResourceApplyAdam"^Adam/update_fc2/ResourceApplyAdam"^Adam/update_fc3/ResourceApplyAdam"^Adam/update_fc4/ResourceApplyAdam"^Adam/update_fc5/ResourceApplyAdam"^Adam/update_wc1/ResourceApplyAdam"^Adam/update_wc2/ResourceApplyAdam"^Adam/update_wc3/ResourceApplyAdam"^Adam/update_wc4/ResourceApplyAdam"^Adam/update_wc5/ResourceApplyAdam*
_output_shapes
: *
dtype0
r

Adam/mul_1MulAdam/ReadVariableOp_2
Adam/beta2*
T0*
_class
loc:@Variable*
_output_shapes
: 
n
Adam/AssignVariableOp_1AssignVariableOpbeta2_power
Adam/mul_1*
_class
loc:@Variable*
dtype0
?
Adam/ReadVariableOp_3ReadVariableOpbeta2_power^Adam/AssignVariableOp_1'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam)^Adam/update_Variable_8/ResourceApplyAdam"^Adam/update_fc2/ResourceApplyAdam"^Adam/update_fc3/ResourceApplyAdam"^Adam/update_fc4/ResourceApplyAdam"^Adam/update_fc5/ResourceApplyAdam"^Adam/update_wc1/ResourceApplyAdam"^Adam/update_wc2/ResourceApplyAdam"^Adam/update_wc3/ResourceApplyAdam"^Adam/update_wc4/ResourceApplyAdam"^Adam/update_wc5/ResourceApplyAdam*
_class
loc:@Variable*
_output_shapes
: *
dtype0
?
AdamNoOp^Adam/AssignVariableOp^Adam/AssignVariableOp_1'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam)^Adam/update_Variable_8/ResourceApplyAdam"^Adam/update_fc2/ResourceApplyAdam"^Adam/update_fc3/ResourceApplyAdam"^Adam/update_fc4/ResourceApplyAdam"^Adam/update_fc5/ResourceApplyAdam"^Adam/update_wc1/ResourceApplyAdam"^Adam/update_wc2/ResourceApplyAdam"^Adam/update_wc3/ResourceApplyAdam"^Adam/update_wc4/ResourceApplyAdam"^Adam/update_wc5/ResourceApplyAdam
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
?
save/SaveV2/tensor_namesConst*
_output_shapes
:8*
dtype0*?
value?B?8BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1Bbeta1_powerBbeta2_powerBfc2Bfc2/AdamB
fc2/Adam_1Bfc3Bfc3/AdamB
fc3/Adam_1Bfc4Bfc4/AdamB
fc4/Adam_1Bfc5Bfc5/AdamB
fc5/Adam_1Bwc1Bwc1/AdamB
wc1/Adam_1Bwc2Bwc2/AdamB
wc2/Adam_1Bwc3Bwc3/AdamB
wc3/Adam_1Bwc4Bwc4/AdamB
wc4/Adam_1Bwc5Bwc5/AdamB
wc5/Adam_1
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:8*
dtype0*?
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable/Read/ReadVariableOp!Variable/Adam/Read/ReadVariableOp#Variable/Adam_1/Read/ReadVariableOpVariable_1/Read/ReadVariableOp#Variable_1/Adam/Read/ReadVariableOp%Variable_1/Adam_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOp#Variable_2/Adam/Read/ReadVariableOp%Variable_2/Adam_1/Read/ReadVariableOpVariable_3/Read/ReadVariableOp#Variable_3/Adam/Read/ReadVariableOp%Variable_3/Adam_1/Read/ReadVariableOpVariable_4/Read/ReadVariableOp#Variable_4/Adam/Read/ReadVariableOp%Variable_4/Adam_1/Read/ReadVariableOpVariable_5/Read/ReadVariableOp#Variable_5/Adam/Read/ReadVariableOp%Variable_5/Adam_1/Read/ReadVariableOpVariable_6/Read/ReadVariableOp#Variable_6/Adam/Read/ReadVariableOp%Variable_6/Adam_1/Read/ReadVariableOpVariable_7/Read/ReadVariableOp#Variable_7/Adam/Read/ReadVariableOp%Variable_7/Adam_1/Read/ReadVariableOpVariable_8/Read/ReadVariableOp#Variable_8/Adam/Read/ReadVariableOp%Variable_8/Adam_1/Read/ReadVariableOpbeta1_power/Read/ReadVariableOpbeta2_power/Read/ReadVariableOpfc2/Read/ReadVariableOpfc2/Adam/Read/ReadVariableOpfc2/Adam_1/Read/ReadVariableOpfc3/Read/ReadVariableOpfc3/Adam/Read/ReadVariableOpfc3/Adam_1/Read/ReadVariableOpfc4/Read/ReadVariableOpfc4/Adam/Read/ReadVariableOpfc4/Adam_1/Read/ReadVariableOpfc5/Read/ReadVariableOpfc5/Adam/Read/ReadVariableOpfc5/Adam_1/Read/ReadVariableOpwc1/Read/ReadVariableOpwc1/Adam/Read/ReadVariableOpwc1/Adam_1/Read/ReadVariableOpwc2/Read/ReadVariableOpwc2/Adam/Read/ReadVariableOpwc2/Adam_1/Read/ReadVariableOpwc3/Read/ReadVariableOpwc3/Adam/Read/ReadVariableOpwc3/Adam_1/Read/ReadVariableOpwc4/Read/ReadVariableOpwc4/Adam/Read/ReadVariableOpwc4/Adam_1/Read/ReadVariableOpwc5/Read/ReadVariableOpwc5/Adam/Read/ReadVariableOpwc5/Adam_1/Read/ReadVariableOp*F
dtypes<
:28
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
value?B?8BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1Bbeta1_powerBbeta2_powerBfc2Bfc2/AdamB
fc2/Adam_1Bfc3Bfc3/AdamB
fc3/Adam_1Bfc4Bfc4/AdamB
fc4/Adam_1Bfc5Bfc5/AdamB
fc5/Adam_1Bwc1Bwc1/AdamB
wc1/Adam_1Bwc2Bwc2/AdamB
wc2/Adam_1Bwc3Bwc3/AdamB
wc3/Adam_1Bwc4Bwc4/AdamB
wc4/Adam_1Bwc5Bwc5/AdamB
wc5/Adam_1
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
O
save/AssignVariableOpAssignVariableOpVariablesave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
X
save/AssignVariableOp_1AssignVariableOpVariable/Adamsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
Z
save/AssignVariableOp_2AssignVariableOpVariable/Adam_1save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
U
save/AssignVariableOp_3AssignVariableOp
Variable_1save/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
Z
save/AssignVariableOp_4AssignVariableOpVariable_1/Adamsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
\
save/AssignVariableOp_5AssignVariableOpVariable_1/Adam_1save/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
U
save/AssignVariableOp_6AssignVariableOp
Variable_2save/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
Z
save/AssignVariableOp_7AssignVariableOpVariable_2/Adamsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
\
save/AssignVariableOp_8AssignVariableOpVariable_2/Adam_1save/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
U
save/AssignVariableOp_9AssignVariableOp
Variable_3save/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
\
save/AssignVariableOp_10AssignVariableOpVariable_3/Adamsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
^
save/AssignVariableOp_11AssignVariableOpVariable_3/Adam_1save/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
W
save/AssignVariableOp_12AssignVariableOp
Variable_4save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
\
save/AssignVariableOp_13AssignVariableOpVariable_4/Adamsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
^
save/AssignVariableOp_14AssignVariableOpVariable_4/Adam_1save/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0*
_output_shapes
:
W
save/AssignVariableOp_15AssignVariableOp
Variable_5save/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
\
save/AssignVariableOp_16AssignVariableOpVariable_5/Adamsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
^
save/AssignVariableOp_17AssignVariableOpVariable_5/Adam_1save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
W
save/AssignVariableOp_18AssignVariableOp
Variable_6save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
\
save/AssignVariableOp_19AssignVariableOpVariable_6/Adamsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:
^
save/AssignVariableOp_20AssignVariableOpVariable_6/Adam_1save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0*
_output_shapes
:
W
save/AssignVariableOp_21AssignVariableOp
Variable_7save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:
\
save/AssignVariableOp_22AssignVariableOpVariable_7/Adamsave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
T0*
_output_shapes
:
^
save/AssignVariableOp_23AssignVariableOpVariable_7/Adam_1save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:24*
T0*
_output_shapes
:
W
save/AssignVariableOp_24AssignVariableOp
Variable_8save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:25*
T0*
_output_shapes
:
\
save/AssignVariableOp_25AssignVariableOpVariable_8/Adamsave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:26*
T0*
_output_shapes
:
^
save/AssignVariableOp_26AssignVariableOpVariable_8/Adam_1save/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:27*
T0*
_output_shapes
:
X
save/AssignVariableOp_27AssignVariableOpbeta1_powersave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:28*
T0*
_output_shapes
:
X
save/AssignVariableOp_28AssignVariableOpbeta2_powersave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:29*
T0*
_output_shapes
:
P
save/AssignVariableOp_29AssignVariableOpfc2save/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:30*
T0*
_output_shapes
:
U
save/AssignVariableOp_30AssignVariableOpfc2/Adamsave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:31*
T0*
_output_shapes
:
W
save/AssignVariableOp_31AssignVariableOp
fc2/Adam_1save/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:32*
T0*
_output_shapes
:
P
save/AssignVariableOp_32AssignVariableOpfc3save/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:33*
T0*
_output_shapes
:
U
save/AssignVariableOp_33AssignVariableOpfc3/Adamsave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:34*
T0*
_output_shapes
:
W
save/AssignVariableOp_34AssignVariableOp
fc3/Adam_1save/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:35*
T0*
_output_shapes
:
P
save/AssignVariableOp_35AssignVariableOpfc4save/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:36*
T0*
_output_shapes
:
U
save/AssignVariableOp_36AssignVariableOpfc4/Adamsave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:37*
T0*
_output_shapes
:
W
save/AssignVariableOp_37AssignVariableOp
fc4/Adam_1save/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:38*
T0*
_output_shapes
:
P
save/AssignVariableOp_38AssignVariableOpfc5save/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:39*
T0*
_output_shapes
:
U
save/AssignVariableOp_39AssignVariableOpfc5/Adamsave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:40*
T0*
_output_shapes
:
W
save/AssignVariableOp_40AssignVariableOp
fc5/Adam_1save/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:41*
T0*
_output_shapes
:
P
save/AssignVariableOp_41AssignVariableOpwc1save/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:42*
T0*
_output_shapes
:
U
save/AssignVariableOp_42AssignVariableOpwc1/Adamsave/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:43*
T0*
_output_shapes
:
W
save/AssignVariableOp_43AssignVariableOp
wc1/Adam_1save/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:44*
T0*
_output_shapes
:
P
save/AssignVariableOp_44AssignVariableOpwc2save/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:45*
T0*
_output_shapes
:
U
save/AssignVariableOp_45AssignVariableOpwc2/Adamsave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:46*
T0*
_output_shapes
:
W
save/AssignVariableOp_46AssignVariableOp
wc2/Adam_1save/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:47*
T0*
_output_shapes
:
P
save/AssignVariableOp_47AssignVariableOpwc3save/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:48*
T0*
_output_shapes
:
U
save/AssignVariableOp_48AssignVariableOpwc3/Adamsave/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:49*
T0*
_output_shapes
:
W
save/AssignVariableOp_49AssignVariableOp
wc3/Adam_1save/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:50*
T0*
_output_shapes
:
P
save/AssignVariableOp_50AssignVariableOpwc4save/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:51*
T0*
_output_shapes
:
U
save/AssignVariableOp_51AssignVariableOpwc4/Adamsave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:52*
T0*
_output_shapes
:
W
save/AssignVariableOp_52AssignVariableOp
wc4/Adam_1save/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:53*
T0*
_output_shapes
:
P
save/AssignVariableOp_53AssignVariableOpwc5save/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:54*
T0*
_output_shapes
:
U
save/AssignVariableOp_54AssignVariableOpwc5/Adamsave/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:55*
T0*
_output_shapes
:
W
save/AssignVariableOp_55AssignVariableOp
wc5/Adam_1save/Identity_55*
dtype0
?
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
Z
loss/write_summary/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z 
[
save/filename_1/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save/filename_1PlaceholderWithDefaultsave/filename_1/input*
_output_shapes
: *
dtype0*
shape: 
i
save/Const_1PlaceholderWithDefaultsave/filename_1*
_output_shapes
: *
dtype0*
shape: 
}
save/StaticRegexFullMatchStaticRegexFullMatchsave/Const_1"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_3Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_2save/Const_3"/device:CPU:**
T0*
_output_shapes
: 
y
save/StringJoin
StringJoinsave/Const_1save/Select"/device:CPU:**
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
value?B?8BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1Bbeta1_powerBbeta2_powerBfc2Bfc2/AdamB
fc2/Adam_1Bfc3Bfc3/AdamB
fc3/Adam_1Bfc4Bfc4/AdamB
fc4/Adam_1Bfc5Bfc5/AdamB
fc5/Adam_1Bwc1Bwc1/AdamB
wc1/Adam_1Bwc2Bwc2/AdamB
wc2/Adam_1Bwc3Bwc3/AdamB
wc3/Adam_1Bwc4Bwc4/AdamB
wc4/Adam_1Bwc5Bwc5/AdamB
wc5/Adam_1
?
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2_1SaveV2save/ShardedFilenamesave/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicesVariable/Read/ReadVariableOp!Variable/Adam/Read/ReadVariableOp#Variable/Adam_1/Read/ReadVariableOpVariable_1/Read/ReadVariableOp#Variable_1/Adam/Read/ReadVariableOp%Variable_1/Adam_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOp#Variable_2/Adam/Read/ReadVariableOp%Variable_2/Adam_1/Read/ReadVariableOpVariable_3/Read/ReadVariableOp#Variable_3/Adam/Read/ReadVariableOp%Variable_3/Adam_1/Read/ReadVariableOpVariable_4/Read/ReadVariableOp#Variable_4/Adam/Read/ReadVariableOp%Variable_4/Adam_1/Read/ReadVariableOpVariable_5/Read/ReadVariableOp#Variable_5/Adam/Read/ReadVariableOp%Variable_5/Adam_1/Read/ReadVariableOpVariable_6/Read/ReadVariableOp#Variable_6/Adam/Read/ReadVariableOp%Variable_6/Adam_1/Read/ReadVariableOpVariable_7/Read/ReadVariableOp#Variable_7/Adam/Read/ReadVariableOp%Variable_7/Adam_1/Read/ReadVariableOpVariable_8/Read/ReadVariableOp#Variable_8/Adam/Read/ReadVariableOp%Variable_8/Adam_1/Read/ReadVariableOpbeta1_power/Read/ReadVariableOpbeta2_power/Read/ReadVariableOpfc2/Read/ReadVariableOpfc2/Adam/Read/ReadVariableOpfc2/Adam_1/Read/ReadVariableOpfc3/Read/ReadVariableOpfc3/Adam/Read/ReadVariableOpfc3/Adam_1/Read/ReadVariableOpfc4/Read/ReadVariableOpfc4/Adam/Read/ReadVariableOpfc4/Adam_1/Read/ReadVariableOpfc5/Read/ReadVariableOpfc5/Adam/Read/ReadVariableOpfc5/Adam_1/Read/ReadVariableOpwc1/Read/ReadVariableOpwc1/Adam/Read/ReadVariableOpwc1/Adam_1/Read/ReadVariableOpwc2/Read/ReadVariableOpwc2/Adam/Read/ReadVariableOpwc2/Adam_1/Read/ReadVariableOpwc3/Read/ReadVariableOpwc3/Adam/Read/ReadVariableOpwc3/Adam_1/Read/ReadVariableOpwc4/Read/ReadVariableOpwc4/Adam/Read/ReadVariableOpwc4/Adam_1/Read/ReadVariableOpwc5/Read/ReadVariableOpwc5/Adam/Read/ReadVariableOpwc5/Adam_1/Read/ReadVariableOp"/device:CPU:0*F
dtypes<
:28
?
save/control_dependency_1Identitysave/ShardedFilename^save/SaveV2_1"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency_1"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 
?
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixessave/Const_1"/device:CPU:0*
delete_old_dirs(
?
save/Identity_56Identitysave/Const_1^save/MergeV2Checkpoints^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
value?B?8BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1Bbeta1_powerBbeta2_powerBfc2Bfc2/AdamB
fc2/Adam_1Bfc3Bfc3/AdamB
fc3/Adam_1Bfc4Bfc4/AdamB
fc4/Adam_1Bfc5Bfc5/AdamB
fc5/Adam_1Bwc1Bwc1/AdamB
wc1/Adam_1Bwc2Bwc2/AdamB
wc2/Adam_1Bwc3Bwc3/AdamB
wc3/Adam_1Bwc4Bwc4/AdamB
wc4/Adam_1Bwc5Bwc5/AdamB
wc5/Adam_1
?
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2_1	RestoreV2save/Const_1save/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28
Q
save/Identity_57Identitysave/RestoreV2_1*
T0*
_output_shapes
:
U
save/AssignVariableOp_56AssignVariableOpVariablesave/Identity_57*
dtype0
S
save/Identity_58Identitysave/RestoreV2_1:1*
T0*
_output_shapes
:
Z
save/AssignVariableOp_57AssignVariableOpVariable/Adamsave/Identity_58*
dtype0
S
save/Identity_59Identitysave/RestoreV2_1:2*
T0*
_output_shapes
:
\
save/AssignVariableOp_58AssignVariableOpVariable/Adam_1save/Identity_59*
dtype0
S
save/Identity_60Identitysave/RestoreV2_1:3*
T0*
_output_shapes
:
W
save/AssignVariableOp_59AssignVariableOp
Variable_1save/Identity_60*
dtype0
S
save/Identity_61Identitysave/RestoreV2_1:4*
T0*
_output_shapes
:
\
save/AssignVariableOp_60AssignVariableOpVariable_1/Adamsave/Identity_61*
dtype0
S
save/Identity_62Identitysave/RestoreV2_1:5*
T0*
_output_shapes
:
^
save/AssignVariableOp_61AssignVariableOpVariable_1/Adam_1save/Identity_62*
dtype0
S
save/Identity_63Identitysave/RestoreV2_1:6*
T0*
_output_shapes
:
W
save/AssignVariableOp_62AssignVariableOp
Variable_2save/Identity_63*
dtype0
S
save/Identity_64Identitysave/RestoreV2_1:7*
T0*
_output_shapes
:
\
save/AssignVariableOp_63AssignVariableOpVariable_2/Adamsave/Identity_64*
dtype0
S
save/Identity_65Identitysave/RestoreV2_1:8*
T0*
_output_shapes
:
^
save/AssignVariableOp_64AssignVariableOpVariable_2/Adam_1save/Identity_65*
dtype0
S
save/Identity_66Identitysave/RestoreV2_1:9*
T0*
_output_shapes
:
W
save/AssignVariableOp_65AssignVariableOp
Variable_3save/Identity_66*
dtype0
T
save/Identity_67Identitysave/RestoreV2_1:10*
T0*
_output_shapes
:
\
save/AssignVariableOp_66AssignVariableOpVariable_3/Adamsave/Identity_67*
dtype0
T
save/Identity_68Identitysave/RestoreV2_1:11*
T0*
_output_shapes
:
^
save/AssignVariableOp_67AssignVariableOpVariable_3/Adam_1save/Identity_68*
dtype0
T
save/Identity_69Identitysave/RestoreV2_1:12*
T0*
_output_shapes
:
W
save/AssignVariableOp_68AssignVariableOp
Variable_4save/Identity_69*
dtype0
T
save/Identity_70Identitysave/RestoreV2_1:13*
T0*
_output_shapes
:
\
save/AssignVariableOp_69AssignVariableOpVariable_4/Adamsave/Identity_70*
dtype0
T
save/Identity_71Identitysave/RestoreV2_1:14*
T0*
_output_shapes
:
^
save/AssignVariableOp_70AssignVariableOpVariable_4/Adam_1save/Identity_71*
dtype0
T
save/Identity_72Identitysave/RestoreV2_1:15*
T0*
_output_shapes
:
W
save/AssignVariableOp_71AssignVariableOp
Variable_5save/Identity_72*
dtype0
T
save/Identity_73Identitysave/RestoreV2_1:16*
T0*
_output_shapes
:
\
save/AssignVariableOp_72AssignVariableOpVariable_5/Adamsave/Identity_73*
dtype0
T
save/Identity_74Identitysave/RestoreV2_1:17*
T0*
_output_shapes
:
^
save/AssignVariableOp_73AssignVariableOpVariable_5/Adam_1save/Identity_74*
dtype0
T
save/Identity_75Identitysave/RestoreV2_1:18*
T0*
_output_shapes
:
W
save/AssignVariableOp_74AssignVariableOp
Variable_6save/Identity_75*
dtype0
T
save/Identity_76Identitysave/RestoreV2_1:19*
T0*
_output_shapes
:
\
save/AssignVariableOp_75AssignVariableOpVariable_6/Adamsave/Identity_76*
dtype0
T
save/Identity_77Identitysave/RestoreV2_1:20*
T0*
_output_shapes
:
^
save/AssignVariableOp_76AssignVariableOpVariable_6/Adam_1save/Identity_77*
dtype0
T
save/Identity_78Identitysave/RestoreV2_1:21*
T0*
_output_shapes
:
W
save/AssignVariableOp_77AssignVariableOp
Variable_7save/Identity_78*
dtype0
T
save/Identity_79Identitysave/RestoreV2_1:22*
T0*
_output_shapes
:
\
save/AssignVariableOp_78AssignVariableOpVariable_7/Adamsave/Identity_79*
dtype0
T
save/Identity_80Identitysave/RestoreV2_1:23*
T0*
_output_shapes
:
^
save/AssignVariableOp_79AssignVariableOpVariable_7/Adam_1save/Identity_80*
dtype0
T
save/Identity_81Identitysave/RestoreV2_1:24*
T0*
_output_shapes
:
W
save/AssignVariableOp_80AssignVariableOp
Variable_8save/Identity_81*
dtype0
T
save/Identity_82Identitysave/RestoreV2_1:25*
T0*
_output_shapes
:
\
save/AssignVariableOp_81AssignVariableOpVariable_8/Adamsave/Identity_82*
dtype0
T
save/Identity_83Identitysave/RestoreV2_1:26*
T0*
_output_shapes
:
^
save/AssignVariableOp_82AssignVariableOpVariable_8/Adam_1save/Identity_83*
dtype0
T
save/Identity_84Identitysave/RestoreV2_1:27*
T0*
_output_shapes
:
X
save/AssignVariableOp_83AssignVariableOpbeta1_powersave/Identity_84*
dtype0
T
save/Identity_85Identitysave/RestoreV2_1:28*
T0*
_output_shapes
:
X
save/AssignVariableOp_84AssignVariableOpbeta2_powersave/Identity_85*
dtype0
T
save/Identity_86Identitysave/RestoreV2_1:29*
T0*
_output_shapes
:
P
save/AssignVariableOp_85AssignVariableOpfc2save/Identity_86*
dtype0
T
save/Identity_87Identitysave/RestoreV2_1:30*
T0*
_output_shapes
:
U
save/AssignVariableOp_86AssignVariableOpfc2/Adamsave/Identity_87*
dtype0
T
save/Identity_88Identitysave/RestoreV2_1:31*
T0*
_output_shapes
:
W
save/AssignVariableOp_87AssignVariableOp
fc2/Adam_1save/Identity_88*
dtype0
T
save/Identity_89Identitysave/RestoreV2_1:32*
T0*
_output_shapes
:
P
save/AssignVariableOp_88AssignVariableOpfc3save/Identity_89*
dtype0
T
save/Identity_90Identitysave/RestoreV2_1:33*
T0*
_output_shapes
:
U
save/AssignVariableOp_89AssignVariableOpfc3/Adamsave/Identity_90*
dtype0
T
save/Identity_91Identitysave/RestoreV2_1:34*
T0*
_output_shapes
:
W
save/AssignVariableOp_90AssignVariableOp
fc3/Adam_1save/Identity_91*
dtype0
T
save/Identity_92Identitysave/RestoreV2_1:35*
T0*
_output_shapes
:
P
save/AssignVariableOp_91AssignVariableOpfc4save/Identity_92*
dtype0
T
save/Identity_93Identitysave/RestoreV2_1:36*
T0*
_output_shapes
:
U
save/AssignVariableOp_92AssignVariableOpfc4/Adamsave/Identity_93*
dtype0
T
save/Identity_94Identitysave/RestoreV2_1:37*
T0*
_output_shapes
:
W
save/AssignVariableOp_93AssignVariableOp
fc4/Adam_1save/Identity_94*
dtype0
T
save/Identity_95Identitysave/RestoreV2_1:38*
T0*
_output_shapes
:
P
save/AssignVariableOp_94AssignVariableOpfc5save/Identity_95*
dtype0
T
save/Identity_96Identitysave/RestoreV2_1:39*
T0*
_output_shapes
:
U
save/AssignVariableOp_95AssignVariableOpfc5/Adamsave/Identity_96*
dtype0
T
save/Identity_97Identitysave/RestoreV2_1:40*
T0*
_output_shapes
:
W
save/AssignVariableOp_96AssignVariableOp
fc5/Adam_1save/Identity_97*
dtype0
T
save/Identity_98Identitysave/RestoreV2_1:41*
T0*
_output_shapes
:
P
save/AssignVariableOp_97AssignVariableOpwc1save/Identity_98*
dtype0
T
save/Identity_99Identitysave/RestoreV2_1:42*
T0*
_output_shapes
:
U
save/AssignVariableOp_98AssignVariableOpwc1/Adamsave/Identity_99*
dtype0
U
save/Identity_100Identitysave/RestoreV2_1:43*
T0*
_output_shapes
:
X
save/AssignVariableOp_99AssignVariableOp
wc1/Adam_1save/Identity_100*
dtype0
U
save/Identity_101Identitysave/RestoreV2_1:44*
T0*
_output_shapes
:
R
save/AssignVariableOp_100AssignVariableOpwc2save/Identity_101*
dtype0
U
save/Identity_102Identitysave/RestoreV2_1:45*
T0*
_output_shapes
:
W
save/AssignVariableOp_101AssignVariableOpwc2/Adamsave/Identity_102*
dtype0
U
save/Identity_103Identitysave/RestoreV2_1:46*
T0*
_output_shapes
:
Y
save/AssignVariableOp_102AssignVariableOp
wc2/Adam_1save/Identity_103*
dtype0
U
save/Identity_104Identitysave/RestoreV2_1:47*
T0*
_output_shapes
:
R
save/AssignVariableOp_103AssignVariableOpwc3save/Identity_104*
dtype0
U
save/Identity_105Identitysave/RestoreV2_1:48*
T0*
_output_shapes
:
W
save/AssignVariableOp_104AssignVariableOpwc3/Adamsave/Identity_105*
dtype0
U
save/Identity_106Identitysave/RestoreV2_1:49*
T0*
_output_shapes
:
Y
save/AssignVariableOp_105AssignVariableOp
wc3/Adam_1save/Identity_106*
dtype0
U
save/Identity_107Identitysave/RestoreV2_1:50*
T0*
_output_shapes
:
R
save/AssignVariableOp_106AssignVariableOpwc4save/Identity_107*
dtype0
U
save/Identity_108Identitysave/RestoreV2_1:51*
T0*
_output_shapes
:
W
save/AssignVariableOp_107AssignVariableOpwc4/Adamsave/Identity_108*
dtype0
U
save/Identity_109Identitysave/RestoreV2_1:52*
T0*
_output_shapes
:
Y
save/AssignVariableOp_108AssignVariableOp
wc4/Adam_1save/Identity_109*
dtype0
U
save/Identity_110Identitysave/RestoreV2_1:53*
T0*
_output_shapes
:
R
save/AssignVariableOp_109AssignVariableOpwc5save/Identity_110*
dtype0
U
save/Identity_111Identitysave/RestoreV2_1:54*
T0*
_output_shapes
:
W
save/AssignVariableOp_110AssignVariableOpwc5/Adamsave/Identity_111*
dtype0
U
save/Identity_112Identitysave/RestoreV2_1:55*
T0*
_output_shapes
:
Y
save/AssignVariableOp_111AssignVariableOp
wc5/Adam_1save/Identity_112*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp_100^save/AssignVariableOp_101^save/AssignVariableOp_102^save/AssignVariableOp_103^save/AssignVariableOp_104^save/AssignVariableOp_105^save/AssignVariableOp_106^save/AssignVariableOp_107^save/AssignVariableOp_108^save/AssignVariableOp_109^save/AssignVariableOp_110^save/AssignVariableOp_111^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_83^save/AssignVariableOp_84^save/AssignVariableOp_85^save/AssignVariableOp_86^save/AssignVariableOp_87^save/AssignVariableOp_88^save/AssignVariableOp_89^save/AssignVariableOp_90^save/AssignVariableOp_91^save/AssignVariableOp_92^save/AssignVariableOp_93^save/AssignVariableOp_94^save/AssignVariableOp_95^save/AssignVariableOp_96^save/AssignVariableOp_97^save/AssignVariableOp_98^save/AssignVariableOp_99
/
save/restore_all_1NoOp^save/restore_shard"?C
save/Const_1:0save/Identity_56:0save/restore_all_1 (5 @F8"
train_op

Adam"?
trainable_variables??
T
wc1:0
wc1/Assignwc1/Read/ReadVariableOp:0(2 wc1/Initializer/random_uniform:08
J

Variable:0Variable/AssignVariable/Read/ReadVariableOp:0(2Const:08
T
wc2:0
wc2/Assignwc2/Read/ReadVariableOp:0(2 wc2/Initializer/random_uniform:08
R
Variable_1:0Variable_1/Assign Variable_1/Read/ReadVariableOp:0(2	Const_1:08
T
wc3:0
wc3/Assignwc3/Read/ReadVariableOp:0(2 wc3/Initializer/random_uniform:08
R
Variable_2:0Variable_2/Assign Variable_2/Read/ReadVariableOp:0(2	Const_2:08
T
wc4:0
wc4/Assignwc4/Read/ReadVariableOp:0(2 wc4/Initializer/random_uniform:08
R
Variable_3:0Variable_3/Assign Variable_3/Read/ReadVariableOp:0(2	Const_3:08
T
wc5:0
wc5/Assignwc5/Read/ReadVariableOp:0(2 wc5/Initializer/random_uniform:08
R
Variable_4:0Variable_4/Assign Variable_4/Read/ReadVariableOp:0(2	Const_4:08
T
fc2:0
fc2/Assignfc2/Read/ReadVariableOp:0(2 fc2/Initializer/random_uniform:08
R
Variable_5:0Variable_5/Assign Variable_5/Read/ReadVariableOp:0(2	Const_5:08
T
fc3:0
fc3/Assignfc3/Read/ReadVariableOp:0(2 fc3/Initializer/random_uniform:08
R
Variable_6:0Variable_6/Assign Variable_6/Read/ReadVariableOp:0(2	Const_6:08
T
fc4:0
fc4/Assignfc4/Read/ReadVariableOp:0(2 fc4/Initializer/random_uniform:08
R
Variable_7:0Variable_7/Assign Variable_7/Read/ReadVariableOp:0(2	Const_7:08
T
fc5:0
fc5/Assignfc5/Read/ReadVariableOp:0(2 fc5/Initializer/random_uniform:08
R
Variable_8:0Variable_8/Assign Variable_8/Read/ReadVariableOp:0(2	Const_8:08"?-
	variables?-?-
T
wc1:0
wc1/Assignwc1/Read/ReadVariableOp:0(2 wc1/Initializer/random_uniform:08
J

Variable:0Variable/AssignVariable/Read/ReadVariableOp:0(2Const:08
T
wc2:0
wc2/Assignwc2/Read/ReadVariableOp:0(2 wc2/Initializer/random_uniform:08
R
Variable_1:0Variable_1/Assign Variable_1/Read/ReadVariableOp:0(2	Const_1:08
T
wc3:0
wc3/Assignwc3/Read/ReadVariableOp:0(2 wc3/Initializer/random_uniform:08
R
Variable_2:0Variable_2/Assign Variable_2/Read/ReadVariableOp:0(2	Const_2:08
T
wc4:0
wc4/Assignwc4/Read/ReadVariableOp:0(2 wc4/Initializer/random_uniform:08
R
Variable_3:0Variable_3/Assign Variable_3/Read/ReadVariableOp:0(2	Const_3:08
T
wc5:0
wc5/Assignwc5/Read/ReadVariableOp:0(2 wc5/Initializer/random_uniform:08
R
Variable_4:0Variable_4/Assign Variable_4/Read/ReadVariableOp:0(2	Const_4:08
T
fc2:0
fc2/Assignfc2/Read/ReadVariableOp:0(2 fc2/Initializer/random_uniform:08
R
Variable_5:0Variable_5/Assign Variable_5/Read/ReadVariableOp:0(2	Const_5:08
T
fc3:0
fc3/Assignfc3/Read/ReadVariableOp:0(2 fc3/Initializer/random_uniform:08
R
Variable_6:0Variable_6/Assign Variable_6/Read/ReadVariableOp:0(2	Const_6:08
T
fc4:0
fc4/Assignfc4/Read/ReadVariableOp:0(2 fc4/Initializer/random_uniform:08
R
Variable_7:0Variable_7/Assign Variable_7/Read/ReadVariableOp:0(2	Const_7:08
T
fc5:0
fc5/Assignfc5/Read/ReadVariableOp:0(2 fc5/Initializer/random_uniform:08
R
Variable_8:0Variable_8/Assign Variable_8/Read/ReadVariableOp:0(2	Const_8:08
q
beta1_power:0beta1_power/Assign!beta1_power/Read/ReadVariableOp:0(2'beta1_power/Initializer/initial_value:0
q
beta2_power:0beta2_power/Assign!beta2_power/Read/ReadVariableOp:0(2'beta2_power/Initializer/initial_value:0
]

wc1/Adam:0wc1/Adam/Assignwc1/Adam/Read/ReadVariableOp:0(2wc1/Adam/Initializer/zeros:0
e
wc1/Adam_1:0wc1/Adam_1/Assign wc1/Adam_1/Read/ReadVariableOp:0(2wc1/Adam_1/Initializer/zeros:0
q
Variable/Adam:0Variable/Adam/Assign#Variable/Adam/Read/ReadVariableOp:0(2!Variable/Adam/Initializer/zeros:0
y
Variable/Adam_1:0Variable/Adam_1/Assign%Variable/Adam_1/Read/ReadVariableOp:0(2#Variable/Adam_1/Initializer/zeros:0
]

wc2/Adam:0wc2/Adam/Assignwc2/Adam/Read/ReadVariableOp:0(2wc2/Adam/Initializer/zeros:0
e
wc2/Adam_1:0wc2/Adam_1/Assign wc2/Adam_1/Read/ReadVariableOp:0(2wc2/Adam_1/Initializer/zeros:0
y
Variable_1/Adam:0Variable_1/Adam/Assign%Variable_1/Adam/Read/ReadVariableOp:0(2#Variable_1/Adam/Initializer/zeros:0
?
Variable_1/Adam_1:0Variable_1/Adam_1/Assign'Variable_1/Adam_1/Read/ReadVariableOp:0(2%Variable_1/Adam_1/Initializer/zeros:0
]

wc3/Adam:0wc3/Adam/Assignwc3/Adam/Read/ReadVariableOp:0(2wc3/Adam/Initializer/zeros:0
e
wc3/Adam_1:0wc3/Adam_1/Assign wc3/Adam_1/Read/ReadVariableOp:0(2wc3/Adam_1/Initializer/zeros:0
y
Variable_2/Adam:0Variable_2/Adam/Assign%Variable_2/Adam/Read/ReadVariableOp:0(2#Variable_2/Adam/Initializer/zeros:0
?
Variable_2/Adam_1:0Variable_2/Adam_1/Assign'Variable_2/Adam_1/Read/ReadVariableOp:0(2%Variable_2/Adam_1/Initializer/zeros:0
]

wc4/Adam:0wc4/Adam/Assignwc4/Adam/Read/ReadVariableOp:0(2wc4/Adam/Initializer/zeros:0
e
wc4/Adam_1:0wc4/Adam_1/Assign wc4/Adam_1/Read/ReadVariableOp:0(2wc4/Adam_1/Initializer/zeros:0
y
Variable_3/Adam:0Variable_3/Adam/Assign%Variable_3/Adam/Read/ReadVariableOp:0(2#Variable_3/Adam/Initializer/zeros:0
?
Variable_3/Adam_1:0Variable_3/Adam_1/Assign'Variable_3/Adam_1/Read/ReadVariableOp:0(2%Variable_3/Adam_1/Initializer/zeros:0
]

wc5/Adam:0wc5/Adam/Assignwc5/Adam/Read/ReadVariableOp:0(2wc5/Adam/Initializer/zeros:0
e
wc5/Adam_1:0wc5/Adam_1/Assign wc5/Adam_1/Read/ReadVariableOp:0(2wc5/Adam_1/Initializer/zeros:0
y
Variable_4/Adam:0Variable_4/Adam/Assign%Variable_4/Adam/Read/ReadVariableOp:0(2#Variable_4/Adam/Initializer/zeros:0
?
Variable_4/Adam_1:0Variable_4/Adam_1/Assign'Variable_4/Adam_1/Read/ReadVariableOp:0(2%Variable_4/Adam_1/Initializer/zeros:0
]

fc2/Adam:0fc2/Adam/Assignfc2/Adam/Read/ReadVariableOp:0(2fc2/Adam/Initializer/zeros:0
e
fc2/Adam_1:0fc2/Adam_1/Assign fc2/Adam_1/Read/ReadVariableOp:0(2fc2/Adam_1/Initializer/zeros:0
y
Variable_5/Adam:0Variable_5/Adam/Assign%Variable_5/Adam/Read/ReadVariableOp:0(2#Variable_5/Adam/Initializer/zeros:0
?
Variable_5/Adam_1:0Variable_5/Adam_1/Assign'Variable_5/Adam_1/Read/ReadVariableOp:0(2%Variable_5/Adam_1/Initializer/zeros:0
]

fc3/Adam:0fc3/Adam/Assignfc3/Adam/Read/ReadVariableOp:0(2fc3/Adam/Initializer/zeros:0
e
fc3/Adam_1:0fc3/Adam_1/Assign fc3/Adam_1/Read/ReadVariableOp:0(2fc3/Adam_1/Initializer/zeros:0
y
Variable_6/Adam:0Variable_6/Adam/Assign%Variable_6/Adam/Read/ReadVariableOp:0(2#Variable_6/Adam/Initializer/zeros:0
?
Variable_6/Adam_1:0Variable_6/Adam_1/Assign'Variable_6/Adam_1/Read/ReadVariableOp:0(2%Variable_6/Adam_1/Initializer/zeros:0
]

fc4/Adam:0fc4/Adam/Assignfc4/Adam/Read/ReadVariableOp:0(2fc4/Adam/Initializer/zeros:0
e
fc4/Adam_1:0fc4/Adam_1/Assign fc4/Adam_1/Read/ReadVariableOp:0(2fc4/Adam_1/Initializer/zeros:0
y
Variable_7/Adam:0Variable_7/Adam/Assign%Variable_7/Adam/Read/ReadVariableOp:0(2#Variable_7/Adam/Initializer/zeros:0
?
Variable_7/Adam_1:0Variable_7/Adam_1/Assign'Variable_7/Adam_1/Read/ReadVariableOp:0(2%Variable_7/Adam_1/Initializer/zeros:0
]

fc5/Adam:0fc5/Adam/Assignfc5/Adam/Read/ReadVariableOp:0(2fc5/Adam/Initializer/zeros:0
e
fc5/Adam_1:0fc5/Adam_1/Assign fc5/Adam_1/Read/ReadVariableOp:0(2fc5/Adam_1/Initializer/zeros:0
y
Variable_8/Adam:0Variable_8/Adam/Assign%Variable_8/Adam/Read/ReadVariableOp:0(2#Variable_8/Adam/Initializer/zeros:0
?
Variable_8/Adam_1:0Variable_8/Adam_1/Assign'Variable_8/Adam_1/Read/ReadVariableOp:0(2%Variable_8/Adam_1/Initializer/zeros:0