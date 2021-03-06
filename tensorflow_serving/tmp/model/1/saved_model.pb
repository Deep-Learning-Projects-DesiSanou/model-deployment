??
?0?/
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
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
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
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
?
&
	ZerosLike
x"T
y"T"	
Ttype"train*2.4.12v2.4.0-49-g85c8b2a817f8??
?
conv2d_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *2???
?
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *2??=
?
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
?
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
?
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
?
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
?
conv2d/kernelVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
n
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
dtype0
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
?
conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d/biasVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 
_
conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
dtype0
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
?
conv2d/Conv2DConv2Dconv2d_inputconv2d/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
?
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
_
conv2d/ReluReluconv2d/BiasAdd*
T0*1
_output_shapes
:???????????
?
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *?)??
?
.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *?)?=
?
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:*
dtype0
?
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
?
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
?
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
?
conv2d_1/kernelVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
t
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
?
conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d_1/biasVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
e
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
?
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides

i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
c
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*1
_output_shapes
:???????????
?
max_pooling2d/MaxPoolMaxPoolconv2d_1/Relu*/
_output_shapes
:?????????AA*
ksize
*
paddingVALID*
strides

?
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
.conv2d_2/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *??̽
?
.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *???=
?
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
dtype0
?
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
?
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
?
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
?
conv2d_2/kernelVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
t
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
?
conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d_2/biasVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
e
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
?
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????AA*
paddingSAME*
strides

i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????AA
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:?????????AA
?
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
.conv2d_3/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?\??
?
.conv2d_3/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?\?=
?
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
dtype0
?
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
?
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
?
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
?
conv2d_3/kernelVarHandleOp*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
t
conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
?
conv2d_3/bias/Initializer/zerosConst* 
_class
loc:@conv2d_3/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d_3/biasVarHandleOp* 
_class
loc:@conv2d_3/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
e
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros*
dtype0
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
v
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
?
conv2d_3/Conv2DConv2Dconv2d_2/Reluconv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????AA*
paddingSAME*
strides

i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????AA
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:?????????AA
?
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

?
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:*
dtype0*%
valueB"             
?
.conv2d_4/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[??
?
.conv2d_4/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[?=
?
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: *
dtype0
?
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
?
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
?
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
?
conv2d_4/kernelVarHandleOp*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_4/kernel
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
t
conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
?
conv2d_4/bias/Initializer/zerosConst* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
valueB *    
?
conv2d_4/biasVarHandleOp* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
e
conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros*
dtype0
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
v
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
?
conv2d_4/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_4/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

i
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:????????? 
a
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*/
_output_shapes
:????????? 
?
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
:*
dtype0*%
valueB"              
?
.conv2d_5/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *?ѽ
?
.conv2d_5/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *??=
?
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
?
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  
?
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  
?
conv2d_5/kernelVarHandleOp*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_5/kernel
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
t
conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
conv2d_5/bias/Initializer/zerosConst* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
valueB *    
?
conv2d_5/biasVarHandleOp* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_5/bias
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
e
conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros*
dtype0
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0
v
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
conv2d_5/Conv2DConv2Dconv2d_4/Reluconv2d_5/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

i
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0
?
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:????????? 
a
conv2d_5/ReluReluconv2d_5/BiasAdd*
T0*/
_output_shapes
:????????? 
?
max_pooling2d_2/MaxPoolMaxPoolconv2d_5/Relu*/
_output_shapes
:?????????

 *
ksize
*
paddingVALID*
strides

?
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:*
dtype0*%
valueB"          @   
?
.conv2d_6/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *????
?
.conv2d_6/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *???=
?
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
?
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @
?
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @
?
conv2d_6/kernelVarHandleOp*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_6/kernel
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
t
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_6/bias/Initializer/zerosConst* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
conv2d_6/biasVarHandleOp* 
_class
loc:@conv2d_6/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_6/bias
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
e
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros*
dtype0
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_6/Conv2DConv2Dmax_pooling2d_2/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????

@*
paddingSAME*
strides

i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0
?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????

@
a
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*/
_output_shapes
:?????????

@
?
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   @   
?
.conv2d_7/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *:͓?
?
.conv2d_7/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *:͓=
?
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
?
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@
?
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@
?
conv2d_7/kernelVarHandleOp*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_7/kernel
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
t
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
conv2d_7/bias/Initializer/zerosConst* 
_class
loc:@conv2d_7/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
conv2d_7/biasVarHandleOp* 
_class
loc:@conv2d_7/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
e
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros*
dtype0
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
conv2d_7/Conv2DConv2Dconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????

@*
paddingSAME*
strides

i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????

@
a
conv2d_7/ReluReluconv2d_7/BiasAdd*
T0*/
_output_shapes
:?????????

@
?
max_pooling2d_3/MaxPoolMaxPoolconv2d_7/Relu*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

?
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   ?   
?
.conv2d_8/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[q?
?
.conv2d_8/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[q=
?
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
?
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?
?
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?
?
conv2d_8/kernelVarHandleOp*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_8/kernel
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
t
conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*
dtype0
|
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_8/bias/Initializer/zerosConst* 
_class
loc:@conv2d_8/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
conv2d_8/biasVarHandleOp* 
_class
loc:@conv2d_8/bias*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_8/bias
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
e
conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros*
dtype0
l
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes	
:?*
dtype0
w
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_8/Conv2DConv2Dmax_pooling2d_3/MaxPoolconv2d_8/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides

j
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes	
:?*
dtype0
?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:??????????
b
conv2d_8/ReluReluconv2d_8/BiasAdd*
T0*0
_output_shapes
:??????????
?
0conv2d_9/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
.conv2d_9/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
.conv2d_9/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
8conv2d_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_9/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
.conv2d_9/kernel/Initializer/random_uniform/subSub.conv2d_9/kernel/Initializer/random_uniform/max.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: 
?
.conv2d_9/kernel/Initializer/random_uniform/mulMul8conv2d_9/kernel/Initializer/random_uniform/RandomUniform.conv2d_9/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??
?
*conv2d_9/kernel/Initializer/random_uniformAdd.conv2d_9/kernel/Initializer/random_uniform/mul.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??
?
conv2d_9/kernelVarHandleOp*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_9/kernel
o
0conv2d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
t
conv2d_9/kernel/AssignAssignVariableOpconv2d_9/kernel*conv2d_9/kernel/Initializer/random_uniform*
dtype0
}
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_9/bias/Initializer/zerosConst* 
_class
loc:@conv2d_9/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
conv2d_9/biasVarHandleOp* 
_class
loc:@conv2d_9/bias*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_9/bias
k
.conv2d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
e
conv2d_9/bias/AssignAssignVariableOpconv2d_9/biasconv2d_9/bias/Initializer/zeros*
dtype0
l
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes	
:?*
dtype0
x
conv2d_9/Conv2D/ReadVariableOpReadVariableOpconv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_9/Conv2DConv2Dconv2d_8/Reluconv2d_9/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides

j
conv2d_9/BiasAdd/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes	
:?*
dtype0
?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2Dconv2d_9/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:??????????
b
conv2d_9/ReluReluconv2d_9/BiasAdd*
T0*0
_output_shapes
:??????????
?
max_pooling2d_4/MaxPoolMaxPoolconv2d_9/Relu*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides

^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   
u
flatten/ReshapeReshapemax_pooling2d_4/MaxPoolflatten/Const*
T0*(
_output_shapes
:??????????
?
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"   ?   
?
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *?Kƽ
?
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *?K?=
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??*
dtype0
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
?
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?

dense/biasVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
j
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
w
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
w
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:??????????
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
p
dropout/dropout/MulMul
dense/Reludropout/dropout/Const*
T0*(
_output_shapes
:??????????
O
dropout/dropout/ShapeShape
dense/Relu*
T0*
_output_shapes
:
?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*
T0*(
_output_shapes
:??????????*
dtype0
c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>
?
dropout/dropout/GreaterEqualGreaterEqual,dropout/dropout/random_uniform/RandomUniformdropout/dropout/GreaterEqual/y*
T0*(
_output_shapes
:??????????
|
dropout/dropout/CastCastdropout/dropout/GreaterEqual*

DstT0*

SrcT0
*(
_output_shapes
:??????????
z
dropout/dropout/Mul_1Muldropout/dropout/Muldropout/dropout/Cast*
T0*(
_output_shapes
:??????????
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"?      
?
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *??[?
?
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *??[>
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?*
dtype0
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?
?
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?
?
dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
?
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
?
dense_1/MatMulMatMuldropout/dropout/Mul_1dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????
]
dense_1/SoftmaxSoftmaxdense_1/BiasAdd*
T0*'
_output_shapes
:?????????
?
dense_1_targetPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
v
total/Initializer/zerosConst*
_class

loc:@total*
_output_shapes
: *
dtype0*
valueB
 *    
x
totalVarHandleOp*
_class

loc:@total*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
v
count/Initializer/zerosConst*
_class

loc:@count*
_output_shapes
: *
dtype0*
valueB
 *    
x
countVarHandleOp*
_class

loc:@count*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
l
!metrics/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
metrics/accuracy/ArgMaxArgMaxdense_1_target!metrics/accuracy/ArgMax/dimension*
T0*#
_output_shapes
:?????????
n
#metrics/accuracy/ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
metrics/accuracy/ArgMax_1ArgMaxdense_1/Softmax#metrics/accuracy/ArgMax_1/dimension*
T0*#
_output_shapes
:?????????
?
metrics/accuracy/EqualEqualmetrics/accuracy/ArgMaxmetrics/accuracy/ArgMax_1*
T0	*#
_output_shapes
:?????????
r
metrics/accuracy/CastCastmetrics/accuracy/Equal*

DstT0*

SrcT0
*#
_output_shapes
:?????????
`
metrics/accuracy/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
k
metrics/accuracy/SumSummetrics/accuracy/Castmetrics/accuracy/Const*
T0*
_output_shapes
: 
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
?
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp^metrics/accuracy/Sum*
_output_shapes
: *
dtype0
U
metrics/accuracy/SizeSizemetrics/accuracy/Cast*
T0*
_output_shapes
: 
f
metrics/accuracy/Cast_1Castmetrics/accuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
?
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_1%^metrics/accuracy/AssignAddVariableOp*
dtype0
?
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount%^metrics/accuracy/AssignAddVariableOp'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
*metrics/accuracy/div_no_nan/ReadVariableOpReadVariableOptotal'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
,metrics/accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
metrics/accuracy/div_no_nanDivNoNan*metrics/accuracy/div_no_nan/ReadVariableOp,metrics/accuracy/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
c
metrics/accuracy/IdentityIdentitymetrics/accuracy/div_no_nan*
T0*
_output_shapes
: 
\
loss/dense_1_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
z
8loss/dense_1_loss/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :
x
9loss/dense_1_loss/softmax_cross_entropy_with_logits/ShapeShapedense_1/BiasAdd*
T0*
_output_shapes
:
|
:loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :
z
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Shape_1Shapedense_1/BiasAdd*
T0*
_output_shapes
:
{
9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :
?
7loss/dense_1_loss/softmax_cross_entropy_with_logits/SubSub:loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank_19loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 
?
?loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice/beginPack7loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub*
N*
T0*
_output_shapes
:
?
>loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
9loss/dense_1_loss/softmax_cross_entropy_with_logits/SliceSlice;loss/dense_1_loss/softmax_cross_entropy_with_logits/Shape_1?loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice/begin>loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0*
_output_shapes
:
?
Closs/dense_1_loss/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
?????????
?
?loss/dense_1_loss/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
:loss/dense_1_loss/softmax_cross_entropy_with_logits/concatConcatV2Closs/dense_1_loss/softmax_cross_entropy_with_logits/concat/values_09loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice?loss/dense_1_loss/softmax_cross_entropy_with_logits/concat/axis*
N*
T0*
_output_shapes
:
?
;loss/dense_1_loss/softmax_cross_entropy_with_logits/ReshapeReshapedense_1/BiasAdd:loss/dense_1_loss/softmax_cross_entropy_with_logits/concat*
T0*0
_output_shapes
:??????????????????
|
:loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :
y
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Shape_2Shapedense_1_target*
T0*
_output_shapes
:
}
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :
?
9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_1Sub:loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank_2;loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
?
Aloss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1/beginPack9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_1*
N*
T0*
_output_shapes
:
?
@loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1Slice;loss/dense_1_loss/softmax_cross_entropy_with_logits/Shape_2Aloss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1/begin@loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
Eloss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Aloss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
<loss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1ConcatV2Eloss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1/values_0;loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1Aloss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1/axis*
N*
T0*
_output_shapes
:
?
=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_1Reshapedense_1_target<loss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1*
T0*0
_output_shapes
:??????????????????
?
3loss/dense_1_loss/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits;loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:?????????:??????????????????
}
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :
?
9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_2Sub8loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank;loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 
?
Aloss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
@loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2/sizePack9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_2*
N*
T0*
_output_shapes
:
?
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2Slice9loss/dense_1_loss/softmax_cross_entropy_with_logits/ShapeAloss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2/begin@loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2Reshape3loss/dense_1_loss/softmax_cross_entropy_with_logits;loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2*
T0*#
_output_shapes
:?????????
j
%loss/dense_1_loss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
#loss/dense_1_loss/weighted_loss/MulMul=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2%loss/dense_1_loss/weighted_loss/Const*
T0*#
_output_shapes
:?????????
c
loss/dense_1_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
}
loss/dense_1_loss/SumSum#loss/dense_1_loss/weighted_loss/Mulloss/dense_1_loss/Const_1*
T0*
_output_shapes
: 
l
loss/dense_1_loss/num_elementsSize#loss/dense_1_loss/weighted_loss/Mul*
T0*
_output_shapes
: 
{
#loss/dense_1_loss/num_elements/CastCastloss/dense_1_loss/num_elements*

DstT0*

SrcT0*
_output_shapes
: 
X
loss/dense_1_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 
_
loss/dense_1_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
_
loss/dense_1_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
loss/dense_1_loss/rangeRangeloss/dense_1_loss/range/startloss/dense_1_loss/Rankloss/dense_1_loss/range/delta*
_output_shapes
: 
o
loss/dense_1_loss/Sum_1Sumloss/dense_1_loss/Sumloss/dense_1_loss/range*
T0*
_output_shapes
: 
?
loss/dense_1_loss/valueDivNoNanloss/dense_1_loss/Sum_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
U
loss/mulMul
loss/mul/xloss/dense_1_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
value	B	 R 
u
iterVarHandleOp*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
j
'training/Adam/gradients/gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
p
+training/Adam/gradients/gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
&training/Adam/gradients/gradients/FillFill'training/Adam/gradients/gradients/Shape+training/Adam/gradients/gradients/grad_ys_0*
T0*
_output_shapes
: 
?
3training/Adam/gradients/gradients/loss/mul_grad/MulMul&training/Adam/gradients/gradients/Fillloss/dense_1_loss/value*
T0*
_output_shapes
: 
?
5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Mul&training/Adam/gradients/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
?
Dtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
?
Ftraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
?
Ttraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/ShapeFtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
Itraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nanDivNoNan5training/Adam/gradients/gradients/loss/mul_grad/Mul_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
Btraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/SumSumItraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nanTtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: 
?
Ftraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/ReshapeReshapeBtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/SumDtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/Shape*
T0*
_output_shapes
: 
?
Btraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/NegNegloss/dense_1_loss/Sum_1*
T0*
_output_shapes
: 
?
Ktraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nan_1DivNoNanBtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/Neg#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
Ktraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nan_2DivNoNanKtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nan_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
Btraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/mulMul5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Ktraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
?
Dtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/Sum_1SumBtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/mulVtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: 
?
Htraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/Reshape_1ReshapeDtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/Sum_1Ftraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/Shape_1*
T0*
_output_shapes
: 
?
Ltraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
?
Ntraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_1_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 
?
Ftraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_1_grad/ReshapeReshapeFtraining/Adam/gradients/gradients/loss/dense_1_loss/value_grad/ReshapeNtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_1_grad/Reshape/shape_1*
T0*
_output_shapes
: 
?
Dtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_1_grad/ConstConst*
_output_shapes
: *
dtype0*
valueB 
?
Ctraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_1_grad/TileTileFtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_1_grad/ReshapeDtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_1_grad/Const*
T0*
_output_shapes
: 
?
Jtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?
Dtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_grad/ReshapeReshapeCtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_1_grad/TileJtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes
:
?
Btraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_grad/ShapeShape#loss/dense_1_loss/weighted_loss/Mul*
T0*
_output_shapes
:
?
Atraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_grad/TileTileDtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_grad/ReshapeBtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_grad/Shape*
T0*#
_output_shapes
:?????????
?
Ptraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/ShapeShape=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2*
T0*
_output_shapes
:
?
Rtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape_1Shape%loss/dense_1_loss/weighted_loss/Const*
T0*
_output_shapes
: 
?
`training/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsPtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/ShapeRtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
Ntraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/MulMulAtraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_grad/Tile%loss/dense_1_loss/weighted_loss/Const*
T0*#
_output_shapes
:?????????
?
Ntraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/SumSumNtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Mul`training/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
Rtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/ReshapeReshapeNtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/SumPtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape*
T0*#
_output_shapes
:?????????
?
Ptraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Mul_1Mul=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2Atraining/Adam/gradients/gradients/loss/dense_1_loss/Sum_grad/Tile*
T0*#
_output_shapes
:?????????
?
Ptraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Sum_1SumPtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Mul_1btraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
?
Ttraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Reshape_1ReshapePtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Sum_1Rtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape_1*
T0*
_output_shapes
: 
?
jtraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape3loss/dense_1_loss/softmax_cross_entropy_with_logits*
T0*
_output_shapes
:
?
ltraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshapeRtraining/Adam/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Reshapejtraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*#
_output_shapes
:?????????
?
,training/Adam/gradients/gradients/zeros_like	ZerosLike5loss/dense_1_loss/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:??????????????????
?
itraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
etraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsltraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshapeitraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
^training/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/mulMuletraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/ExpandDims5loss/dense_1_loss/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:??????????????????
?
etraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax;loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:??????????????????
?
^training/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/NegNegetraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:??????????????????
?
ktraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
gtraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsltraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshapektraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*'
_output_shapes
:?????????
?
`training/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/mul_1Mulgtraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1^training/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:??????????????????
?
htraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapedense_1/BiasAdd*
T0*
_output_shapes
:
?
jtraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshape^training/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits_grad/mulhtraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*'
_output_shapes
:?????????
?
Btraining/Adam/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradjtraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0*
_output_shapes
:
?
<training/Adam/gradients/gradients/dense_1/MatMul_grad/MatMulMatMuljtraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshapedense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????*
transpose_b(
?
>training/Adam/gradients/gradients/dense_1/MatMul_grad/MatMul_1MatMuldropout/dropout/Mul_1jtraining/Adam/gradients/gradients/loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0*
_output_shapes
:	?*
transpose_a(
?
Btraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/ShapeShapedropout/dropout/Mul*
T0*
_output_shapes
:
?
Dtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Shape_1Shapedropout/dropout/Cast*
T0*
_output_shapes
:
?
Rtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/ShapeDtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
@training/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/MulMul<training/Adam/gradients/gradients/dense_1/MatMul_grad/MatMuldropout/dropout/Cast*
T0*(
_output_shapes
:??????????
?
@training/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/SumSum@training/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/MulRtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
Dtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/ReshapeReshape@training/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/SumBtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Shape*
T0*(
_output_shapes
:??????????
?
Btraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Mul_1Muldropout/dropout/Mul<training/Adam/gradients/gradients/dense_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:??????????
?
Btraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Sum_1SumBtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Mul_1Ttraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
?
Ftraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Reshape_1ReshapeBtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Sum_1Dtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Shape_1*
T0*(
_output_shapes
:??????????
z
@training/Adam/gradients/gradients/dropout/dropout/Mul_grad/ShapeShape
dense/Relu*
T0*
_output_shapes
:
?
Btraining/Adam/gradients/gradients/dropout/dropout/Mul_grad/Shape_1Shapedropout/dropout/Const*
T0*
_output_shapes
: 
?
Ptraining/Adam/gradients/gradients/dropout/dropout/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@training/Adam/gradients/gradients/dropout/dropout/Mul_grad/ShapeBtraining/Adam/gradients/gradients/dropout/dropout/Mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
>training/Adam/gradients/gradients/dropout/dropout/Mul_grad/MulMulDtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Reshapedropout/dropout/Const*
T0*(
_output_shapes
:??????????
?
>training/Adam/gradients/gradients/dropout/dropout/Mul_grad/SumSum>training/Adam/gradients/gradients/dropout/dropout/Mul_grad/MulPtraining/Adam/gradients/gradients/dropout/dropout/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
Btraining/Adam/gradients/gradients/dropout/dropout/Mul_grad/ReshapeReshape>training/Adam/gradients/gradients/dropout/dropout/Mul_grad/Sum@training/Adam/gradients/gradients/dropout/dropout/Mul_grad/Shape*
T0*(
_output_shapes
:??????????
?
@training/Adam/gradients/gradients/dropout/dropout/Mul_grad/Mul_1Mul
dense/ReluDtraining/Adam/gradients/gradients/dropout/dropout/Mul_1_grad/Reshape*
T0*(
_output_shapes
:??????????
?
@training/Adam/gradients/gradients/dropout/dropout/Mul_grad/Sum_1Sum@training/Adam/gradients/gradients/dropout/dropout/Mul_grad/Mul_1Rtraining/Adam/gradients/gradients/dropout/dropout/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
?
Dtraining/Adam/gradients/gradients/dropout/dropout/Mul_grad/Reshape_1Reshape@training/Adam/gradients/gradients/dropout/dropout/Mul_grad/Sum_1Btraining/Adam/gradients/gradients/dropout/dropout/Mul_grad/Shape_1*
T0*
_output_shapes
: 
?
:training/Adam/gradients/gradients/dense/Relu_grad/ReluGradReluGradBtraining/Adam/gradients/gradients/dropout/dropout/Mul_grad/Reshape
dense/Relu*
T0*(
_output_shapes
:??????????
?
@training/Adam/gradients/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad:training/Adam/gradients/gradients/dense/Relu_grad/ReluGrad*
T0*
_output_shapes	
:?
?
:training/Adam/gradients/gradients/dense/MatMul_grad/MatMulMatMul:training/Adam/gradients/gradients/dense/Relu_grad/ReluGraddense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????*
transpose_b(
?
<training/Adam/gradients/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/Reshape:training/Adam/gradients/gradients/dense/Relu_grad/ReluGrad*
T0* 
_output_shapes
:
??*
transpose_a(
?
<training/Adam/gradients/gradients/flatten/Reshape_grad/ShapeShapemax_pooling2d_4/MaxPool*
T0*
_output_shapes
:
?
>training/Adam/gradients/gradients/flatten/Reshape_grad/ReshapeReshape:training/Adam/gradients/gradients/dense/MatMul_grad/MatMul<training/Adam/gradients/gradients/flatten/Reshape_grad/Shape*
T0*0
_output_shapes
:??????????
?
Jtraining/Adam/gradients/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_9/Relumax_pooling2d_4/MaxPool>training/Adam/gradients/gradients/flatten/Reshape_grad/Reshape*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides

?
=training/Adam/gradients/gradients/conv2d_9/Relu_grad/ReluGradReluGradJtraining/Adam/gradients/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGradconv2d_9/Relu*
T0*0
_output_shapes
:??????????
?
Ctraining/Adam/gradients/gradients/conv2d_9/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/conv2d_9/Relu_grad/ReluGrad*
T0*
_output_shapes	
:?
?
=training/Adam/gradients/gradients/conv2d_9/Conv2D_grad/ShapeNShapeNconv2d_8/Reluconv2d_9/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Jtraining/Adam/gradients/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/Adam/gradients/gradients/conv2d_9/Conv2D_grad/ShapeNconv2d_9/Conv2D/ReadVariableOp=training/Adam/gradients/gradients/conv2d_9/Relu_grad/ReluGrad*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides

?
Ktraining/Adam/gradients/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_8/Relu?training/Adam/gradients/gradients/conv2d_9/Conv2D_grad/ShapeN:1=training/Adam/gradients/gradients/conv2d_9/Relu_grad/ReluGrad*
T0*(
_output_shapes
:??*
paddingSAME*
strides

?
=training/Adam/gradients/gradients/conv2d_8/Relu_grad/ReluGradReluGradJtraining/Adam/gradients/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropInputconv2d_8/Relu*
T0*0
_output_shapes
:??????????
?
Ctraining/Adam/gradients/gradients/conv2d_8/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/conv2d_8/Relu_grad/ReluGrad*
T0*
_output_shapes	
:?
?
=training/Adam/gradients/gradients/conv2d_8/Conv2D_grad/ShapeNShapeNmax_pooling2d_3/MaxPoolconv2d_8/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Jtraining/Adam/gradients/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/Adam/gradients/gradients/conv2d_8/Conv2D_grad/ShapeNconv2d_8/Conv2D/ReadVariableOp=training/Adam/gradients/gradients/conv2d_8/Relu_grad/ReluGrad*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides

?
Ktraining/Adam/gradients/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_3/MaxPool?training/Adam/gradients/gradients/conv2d_8/Conv2D_grad/ShapeN:1=training/Adam/gradients/gradients/conv2d_8/Relu_grad/ReluGrad*
T0*'
_output_shapes
:@?*
paddingSAME*
strides

?
Jtraining/Adam/gradients/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_7/Relumax_pooling2d_3/MaxPoolJtraining/Adam/gradients/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides

?
=training/Adam/gradients/gradients/conv2d_7/Relu_grad/ReluGradReluGradJtraining/Adam/gradients/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradconv2d_7/Relu*
T0*/
_output_shapes
:?????????

@
?
Ctraining/Adam/gradients/gradients/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/conv2d_7/Relu_grad/ReluGrad*
T0*
_output_shapes
:@
?
=training/Adam/gradients/gradients/conv2d_7/Conv2D_grad/ShapeNShapeNconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Jtraining/Adam/gradients/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/Adam/gradients/gradients/conv2d_7/Conv2D_grad/ShapeNconv2d_7/Conv2D/ReadVariableOp=training/Adam/gradients/gradients/conv2d_7/Relu_grad/ReluGrad*
T0*/
_output_shapes
:?????????

@*
paddingSAME*
strides

?
Ktraining/Adam/gradients/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_6/Relu?training/Adam/gradients/gradients/conv2d_7/Conv2D_grad/ShapeN:1=training/Adam/gradients/gradients/conv2d_7/Relu_grad/ReluGrad*
T0*&
_output_shapes
:@@*
paddingSAME*
strides

?
=training/Adam/gradients/gradients/conv2d_6/Relu_grad/ReluGradReluGradJtraining/Adam/gradients/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputconv2d_6/Relu*
T0*/
_output_shapes
:?????????

@
?
Ctraining/Adam/gradients/gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/conv2d_6/Relu_grad/ReluGrad*
T0*
_output_shapes
:@
?
=training/Adam/gradients/gradients/conv2d_6/Conv2D_grad/ShapeNShapeNmax_pooling2d_2/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Jtraining/Adam/gradients/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/Adam/gradients/gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/Conv2D/ReadVariableOp=training/Adam/gradients/gradients/conv2d_6/Relu_grad/ReluGrad*
T0*/
_output_shapes
:?????????

 *
paddingSAME*
strides

?
Ktraining/Adam/gradients/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_2/MaxPool?training/Adam/gradients/gradients/conv2d_6/Conv2D_grad/ShapeN:1=training/Adam/gradients/gradients/conv2d_6/Relu_grad/ReluGrad*
T0*&
_output_shapes
: @*
paddingSAME*
strides

?
Jtraining/Adam/gradients/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_5/Relumax_pooling2d_2/MaxPoolJtraining/Adam/gradients/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides

?
=training/Adam/gradients/gradients/conv2d_5/Relu_grad/ReluGradReluGradJtraining/Adam/gradients/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_5/Relu*
T0*/
_output_shapes
:????????? 
?
Ctraining/Adam/gradients/gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/conv2d_5/Relu_grad/ReluGrad*
T0*
_output_shapes
: 
?
=training/Adam/gradients/gradients/conv2d_5/Conv2D_grad/ShapeNShapeNconv2d_4/Reluconv2d_5/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Jtraining/Adam/gradients/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/Adam/gradients/gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/Conv2D/ReadVariableOp=training/Adam/gradients/gradients/conv2d_5/Relu_grad/ReluGrad*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

?
Ktraining/Adam/gradients/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_4/Relu?training/Adam/gradients/gradients/conv2d_5/Conv2D_grad/ShapeN:1=training/Adam/gradients/gradients/conv2d_5/Relu_grad/ReluGrad*
T0*&
_output_shapes
:  *
paddingSAME*
strides

?
=training/Adam/gradients/gradients/conv2d_4/Relu_grad/ReluGradReluGradJtraining/Adam/gradients/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputconv2d_4/Relu*
T0*/
_output_shapes
:????????? 
?
Ctraining/Adam/gradients/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*
_output_shapes
: 
?
=training/Adam/gradients/gradients/conv2d_4/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_4/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Jtraining/Adam/gradients/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/Adam/gradients/gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/Conv2D/ReadVariableOp=training/Adam/gradients/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides

?
Ktraining/Adam/gradients/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool?training/Adam/gradients/gradients/conv2d_4/Conv2D_grad/ShapeN:1=training/Adam/gradients/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*&
_output_shapes
: *
paddingSAME*
strides

?
Jtraining/Adam/gradients/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d_1/MaxPoolJtraining/Adam/gradients/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:?????????AA*
ksize
*
paddingVALID*
strides

?
=training/Adam/gradients/gradients/conv2d_3/Relu_grad/ReluGradReluGradJtraining/Adam/gradients/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*/
_output_shapes
:?????????AA
?
Ctraining/Adam/gradients/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*
_output_shapes
:
?
=training/Adam/gradients/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNconv2d_2/Reluconv2d_3/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Jtraining/Adam/gradients/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/Adam/gradients/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/Conv2D/ReadVariableOp=training/Adam/gradients/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*/
_output_shapes
:?????????AA*
paddingSAME*
strides

?
Ktraining/Adam/gradients/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_2/Relu?training/Adam/gradients/gradients/conv2d_3/Conv2D_grad/ShapeN:1=training/Adam/gradients/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*&
_output_shapes
:*
paddingSAME*
strides

?
=training/Adam/gradients/gradients/conv2d_2/Relu_grad/ReluGradReluGradJtraining/Adam/gradients/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputconv2d_2/Relu*
T0*/
_output_shapes
:?????????AA
?
Ctraining/Adam/gradients/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
_output_shapes
:
?
=training/Adam/gradients/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Jtraining/Adam/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/Adam/gradients/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp=training/Adam/gradients/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*/
_output_shapes
:?????????AA*
paddingSAME*
strides

?
Ktraining/Adam/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool?training/Adam/gradients/gradients/conv2d_2/Conv2D_grad/ShapeN:1=training/Adam/gradients/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*&
_output_shapes
:*
paddingSAME*
strides

?
Htraining/Adam/gradients/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_1/Relumax_pooling2d/MaxPoolJtraining/Adam/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides

?
=training/Adam/gradients/gradients/conv2d_1/Relu_grad/ReluGradReluGradHtraining/Adam/gradients/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_1/Relu*
T0*1
_output_shapes
:???????????
?
Ctraining/Adam/gradients/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
_output_shapes
:
?
=training/Adam/gradients/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Jtraining/Adam/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/Adam/gradients/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp=training/Adam/gradients/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides

?
Ktraining/Adam/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu?training/Adam/gradients/gradients/conv2d_1/Conv2D_grad/ShapeN:1=training/Adam/gradients/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*&
_output_shapes
:*
paddingSAME*
strides

?
;training/Adam/gradients/gradients/conv2d/Relu_grad/ReluGradReluGradJtraining/Adam/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputconv2d/Relu*
T0*1
_output_shapes
:???????????
?
Atraining/Adam/gradients/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad;training/Adam/gradients/gradients/conv2d/Relu_grad/ReluGrad*
T0*
_output_shapes
:
?
;training/Adam/gradients/gradients/conv2d/Conv2D_grad/ShapeNShapeNconv2d_inputconv2d/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
?
Htraining/Adam/gradients/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;training/Adam/gradients/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp;training/Adam/gradients/gradients/conv2d/Relu_grad/ReluGrad*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides

?
Itraining/Adam/gradients/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_input=training/Adam/gradients/gradients/conv2d/Conv2D_grad/ShapeN:1;training/Adam/gradients/gradients/conv2d/Relu_grad/ReluGrad*
T0*&
_output_shapes
:*
paddingSAME*
strides

?
.training/Adam/beta_1/Initializer/initial_valueConst*'
_class
loc:@training/Adam/beta_1*
_output_shapes
: *
dtype0*
valueB
 *fff?
?
training/Adam/beta_1VarHandleOp*'
_class
loc:@training/Adam/beta_1*
_output_shapes
: *
dtype0*
shape: *%
shared_nametraining/Adam/beta_1
y
5training/Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 
?
training/Adam/beta_1/AssignAssignVariableOptraining/Adam/beta_1.training/Adam/beta_1/Initializer/initial_value*
dtype0
u
(training/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining/Adam/beta_1*
_output_shapes
: *
dtype0
?
.training/Adam/beta_2/Initializer/initial_valueConst*'
_class
loc:@training/Adam/beta_2*
_output_shapes
: *
dtype0*
valueB
 *w??
?
training/Adam/beta_2VarHandleOp*'
_class
loc:@training/Adam/beta_2*
_output_shapes
: *
dtype0*
shape: *%
shared_nametraining/Adam/beta_2
y
5training/Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 
?
training/Adam/beta_2/AssignAssignVariableOptraining/Adam/beta_2.training/Adam/beta_2/Initializer/initial_value*
dtype0
u
(training/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining/Adam/beta_2*
_output_shapes
: *
dtype0
?
-training/Adam/decay/Initializer/initial_valueConst*&
_class
loc:@training/Adam/decay*
_output_shapes
: *
dtype0*
valueB
 *??'7
?
training/Adam/decayVarHandleOp*&
_class
loc:@training/Adam/decay*
_output_shapes
: *
dtype0*
shape: *$
shared_nametraining/Adam/decay
w
4training/Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/decay*
_output_shapes
: 

training/Adam/decay/AssignAssignVariableOptraining/Adam/decay-training/Adam/decay/Initializer/initial_value*
dtype0
s
'training/Adam/decay/Read/ReadVariableOpReadVariableOptraining/Adam/decay*
_output_shapes
: *
dtype0
?
5training/Adam/learning_rate/Initializer/initial_valueConst*.
_class$
" loc:@training/Adam/learning_rate*
_output_shapes
: *
dtype0*
valueB
 *??8
?
training/Adam/learning_rateVarHandleOp*.
_class$
" loc:@training/Adam/learning_rate*
_output_shapes
: *
dtype0*
shape: *,
shared_nametraining/Adam/learning_rate
?
<training/Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 
?
"training/Adam/learning_rate/AssignAssignVariableOptraining/Adam/learning_rate5training/Adam/learning_rate/Initializer/initial_value*
dtype0
?
/training/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
_output_shapes
: *
dtype0
?
/training/Adam/conv2d/kernel/m/Initializer/zerosConst* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0*%
valueB*    
?
training/Adam/conv2d/kernel/mVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*.
shared_nametraining/Adam/conv2d/kernel/m
?
>training/Adam/conv2d/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d/kernel/m* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
?
$training/Adam/conv2d/kernel/m/AssignAssignVariableOptraining/Adam/conv2d/kernel/m/training/Adam/conv2d/kernel/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d/kernel/m* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
?
-training/Adam/conv2d/bias/m/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/conv2d/bias/mVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*,
shared_nametraining/Adam/conv2d/bias/m
?
<training/Adam/conv2d/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d/bias/m*
_class
loc:@conv2d/bias*
_output_shapes
: 
?
"training/Adam/conv2d/bias/m/AssignAssignVariableOptraining/Adam/conv2d/bias/m-training/Adam/conv2d/bias/m/Initializer/zeros*
dtype0
?
/training/Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d/bias/m*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0
?
Atraining/Adam/conv2d_1/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
7training/Adam/conv2d_1/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_1/kernel/m/Initializer/zerosFillAtraining/Adam/conv2d_1/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_1/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
?
training/Adam/conv2d_1/kernel/mVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape:*0
shared_name!training/Adam/conv2d_1/kernel/m
?
@training/Adam/conv2d_1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_1/kernel/m*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_1/kernel/m/AssignAssignVariableOptraining/Adam/conv2d_1/kernel/m1training/Adam/conv2d_1/kernel/m/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_1/kernel/m*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:*
dtype0
?
/training/Adam/conv2d_1/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/conv2d_1/bias/mVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape:*.
shared_nametraining/Adam/conv2d_1/bias/m
?
>training/Adam/conv2d_1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_1/bias/m* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
?
$training/Adam/conv2d_1/bias/m/AssignAssignVariableOptraining/Adam/conv2d_1/bias/m/training/Adam/conv2d_1/bias/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_1/bias/m* 
_class
loc:@conv2d_1/bias*
_output_shapes
:*
dtype0
?
Atraining/Adam/conv2d_2/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
7training/Adam/conv2d_2/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_2/kernel/m/Initializer/zerosFillAtraining/Adam/conv2d_2/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_2/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
?
training/Adam/conv2d_2/kernel/mVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape:*0
shared_name!training/Adam/conv2d_2/kernel/m
?
@training/Adam/conv2d_2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_2/kernel/m*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_2/kernel/m/AssignAssignVariableOptraining/Adam/conv2d_2/kernel/m1training/Adam/conv2d_2/kernel/m/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_2/kernel/m*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
dtype0
?
/training/Adam/conv2d_2/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/conv2d_2/bias/mVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:*.
shared_nametraining/Adam/conv2d_2/bias/m
?
>training/Adam/conv2d_2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_2/bias/m* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
?
$training/Adam/conv2d_2/bias/m/AssignAssignVariableOptraining/Adam/conv2d_2/bias/m/training/Adam/conv2d_2/bias/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_2/bias/m* 
_class
loc:@conv2d_2/bias*
_output_shapes
:*
dtype0
?
Atraining/Adam/conv2d_3/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
7training/Adam/conv2d_3/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_3/kernel/m/Initializer/zerosFillAtraining/Adam/conv2d_3/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_3/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
?
training/Adam/conv2d_3/kernel/mVarHandleOp*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
shape:*0
shared_name!training/Adam/conv2d_3/kernel/m
?
@training/Adam/conv2d_3/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_3/kernel/m*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_3/kernel/m/AssignAssignVariableOptraining/Adam/conv2d_3/kernel/m1training/Adam/conv2d_3/kernel/m/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_3/kernel/m*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
dtype0
?
/training/Adam/conv2d_3/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_3/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/conv2d_3/bias/mVarHandleOp* 
_class
loc:@conv2d_3/bias*
_output_shapes
: *
dtype0*
shape:*.
shared_nametraining/Adam/conv2d_3/bias/m
?
>training/Adam/conv2d_3/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_3/bias/m* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
?
$training/Adam/conv2d_3/bias/m/AssignAssignVariableOptraining/Adam/conv2d_3/bias/m/training/Adam/conv2d_3/bias/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_3/bias/m* 
_class
loc:@conv2d_3/bias*
_output_shapes
:*
dtype0
?
Atraining/Adam/conv2d_4/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:*
dtype0*%
valueB"             
?
7training/Adam/conv2d_4/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_4/kernel/m/Initializer/zerosFillAtraining/Adam/conv2d_4/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_4/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
?
training/Adam/conv2d_4/kernel/mVarHandleOp*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
shape: *0
shared_name!training/Adam/conv2d_4/kernel/m
?
@training/Adam/conv2d_4/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_4/kernel/m*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_4/kernel/m/AssignAssignVariableOptraining/Adam/conv2d_4/kernel/m1training/Adam/conv2d_4/kernel/m/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_4/kernel/m*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: *
dtype0
?
/training/Adam/conv2d_4/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
valueB *    
?
training/Adam/conv2d_4/bias/mVarHandleOp* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
shape: *.
shared_nametraining/Adam/conv2d_4/bias/m
?
>training/Adam/conv2d_4/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_4/bias/m* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
?
$training/Adam/conv2d_4/bias/m/AssignAssignVariableOptraining/Adam/conv2d_4/bias/m/training/Adam/conv2d_4/bias/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_4/bias/m* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0
?
Atraining/Adam/conv2d_5/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
:*
dtype0*%
valueB"              
?
7training/Adam/conv2d_5/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_5/kernel/m/Initializer/zerosFillAtraining/Adam/conv2d_5/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_5/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  
?
training/Adam/conv2d_5/kernel/mVarHandleOp*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
shape:  *0
shared_name!training/Adam/conv2d_5/kernel/m
?
@training/Adam/conv2d_5/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_5/kernel/m*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_5/kernel/m/AssignAssignVariableOptraining/Adam/conv2d_5/kernel/m1training/Adam/conv2d_5/kernel/m/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_5/kernel/m*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
/training/Adam/conv2d_5/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
valueB *    
?
training/Adam/conv2d_5/bias/mVarHandleOp* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
shape: *.
shared_nametraining/Adam/conv2d_5/bias/m
?
>training/Adam/conv2d_5/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_5/bias/m* 
_class
loc:@conv2d_5/bias*
_output_shapes
: 
?
$training/Adam/conv2d_5/bias/m/AssignAssignVariableOptraining/Adam/conv2d_5/bias/m/training/Adam/conv2d_5/bias/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_5/bias/m* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0
?
Atraining/Adam/conv2d_6/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:*
dtype0*%
valueB"          @   
?
7training/Adam/conv2d_6/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_6/kernel/m/Initializer/zerosFillAtraining/Adam/conv2d_6/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_6/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @
?
training/Adam/conv2d_6/kernel/mVarHandleOp*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
shape: @*0
shared_name!training/Adam/conv2d_6/kernel/m
?
@training/Adam/conv2d_6/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_6/kernel/m*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_6/kernel/m/AssignAssignVariableOptraining/Adam/conv2d_6/kernel/m1training/Adam/conv2d_6/kernel/m/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_6/kernel/m*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
/training/Adam/conv2d_6/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
training/Adam/conv2d_6/bias/mVarHandleOp* 
_class
loc:@conv2d_6/bias*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d_6/bias/m
?
>training/Adam/conv2d_6/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_6/bias/m* 
_class
loc:@conv2d_6/bias*
_output_shapes
: 
?
$training/Adam/conv2d_6/bias/m/AssignAssignVariableOptraining/Adam/conv2d_6/bias/m/training/Adam/conv2d_6/bias/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_6/bias/m* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@*
dtype0
?
Atraining/Adam/conv2d_7/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   @   
?
7training/Adam/conv2d_7/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_7/kernel/m/Initializer/zerosFillAtraining/Adam/conv2d_7/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_7/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@
?
training/Adam/conv2d_7/kernel/mVarHandleOp*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
shape:@@*0
shared_name!training/Adam/conv2d_7/kernel/m
?
@training/Adam/conv2d_7/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_7/kernel/m*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_7/kernel/m/AssignAssignVariableOptraining/Adam/conv2d_7/kernel/m1training/Adam/conv2d_7/kernel/m/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_7/kernel/m*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
/training/Adam/conv2d_7/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_7/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
training/Adam/conv2d_7/bias/mVarHandleOp* 
_class
loc:@conv2d_7/bias*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d_7/bias/m
?
>training/Adam/conv2d_7/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_7/bias/m* 
_class
loc:@conv2d_7/bias*
_output_shapes
: 
?
$training/Adam/conv2d_7/bias/m/AssignAssignVariableOptraining/Adam/conv2d_7/bias/m/training/Adam/conv2d_7/bias/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_7/bias/m* 
_class
loc:@conv2d_7/bias*
_output_shapes
:@*
dtype0
?
Atraining/Adam/conv2d_8/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   ?   
?
7training/Adam/conv2d_8/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_8/kernel/m/Initializer/zerosFillAtraining/Adam/conv2d_8/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_8/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?
?
training/Adam/conv2d_8/kernel/mVarHandleOp*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
shape:@?*0
shared_name!training/Adam/conv2d_8/kernel/m
?
@training/Adam/conv2d_8/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_8/kernel/m*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_8/kernel/m/AssignAssignVariableOptraining/Adam/conv2d_8/kernel/m1training/Adam/conv2d_8/kernel/m/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_8/kernel/m*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
/training/Adam/conv2d_8/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_8/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
training/Adam/conv2d_8/bias/mVarHandleOp* 
_class
loc:@conv2d_8/bias*
_output_shapes
: *
dtype0*
shape:?*.
shared_nametraining/Adam/conv2d_8/bias/m
?
>training/Adam/conv2d_8/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_8/bias/m* 
_class
loc:@conv2d_8/bias*
_output_shapes
: 
?
$training/Adam/conv2d_8/bias/m/AssignAssignVariableOptraining/Adam/conv2d_8/bias/m/training/Adam/conv2d_8/bias/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_8/bias/m* 
_class
loc:@conv2d_8/bias*
_output_shapes	
:?*
dtype0
?
Atraining/Adam/conv2d_9/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
7training/Adam/conv2d_9/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_9/kernel/m/Initializer/zerosFillAtraining/Adam/conv2d_9/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_9/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??
?
training/Adam/conv2d_9/kernel/mVarHandleOp*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
shape:??*0
shared_name!training/Adam/conv2d_9/kernel/m
?
@training/Adam/conv2d_9/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_9/kernel/m*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_9/kernel/m/AssignAssignVariableOptraining/Adam/conv2d_9/kernel/m1training/Adam/conv2d_9/kernel/m/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_9/kernel/m*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
/training/Adam/conv2d_9/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_9/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
training/Adam/conv2d_9/bias/mVarHandleOp* 
_class
loc:@conv2d_9/bias*
_output_shapes
: *
dtype0*
shape:?*.
shared_nametraining/Adam/conv2d_9/bias/m
?
>training/Adam/conv2d_9/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_9/bias/m* 
_class
loc:@conv2d_9/bias*
_output_shapes
: 
?
$training/Adam/conv2d_9/bias/m/AssignAssignVariableOptraining/Adam/conv2d_9/bias/m/training/Adam/conv2d_9/bias/m/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_9/bias/m* 
_class
loc:@conv2d_9/bias*
_output_shapes	
:?*
dtype0
?
>training/Adam/dense/kernel/m/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"   ?   
?
4training/Adam/dense/kernel/m/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
.training/Adam/dense/kernel/m/Initializer/zerosFill>training/Adam/dense/kernel/m/Initializer/zeros/shape_as_tensor4training/Adam/dense/kernel/m/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
training/Adam/dense/kernel/mVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nametraining/Adam/dense/kernel/m
?
=training/Adam/dense/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/kernel/m*
_class
loc:@dense/kernel*
_output_shapes
: 
?
#training/Adam/dense/kernel/m/AssignAssignVariableOptraining/Adam/dense/kernel/m.training/Adam/dense/kernel/m/Initializer/zeros*
dtype0
?
0training/Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/m*
_class
loc:@dense/kernel* 
_output_shapes
:
??*
dtype0
?
,training/Adam/dense/bias/m/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
training/Adam/dense/bias/mVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:?*+
shared_nametraining/Adam/dense/bias/m
?
;training/Adam/dense/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/bias/m*
_class
loc:@dense/bias*
_output_shapes
: 
?
!training/Adam/dense/bias/m/AssignAssignVariableOptraining/Adam/dense/bias/m,training/Adam/dense/bias/m/Initializer/zeros*
dtype0
?
.training/Adam/dense/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/m*
_class
loc:@dense/bias*
_output_shapes	
:?*
dtype0
?
0training/Adam/dense_1/kernel/m/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?*
dtype0*
valueB	?*    
?
training/Adam/dense_1/kernel/mVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:	?*/
shared_name training/Adam/dense_1/kernel/m
?
?training/Adam/dense_1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
%training/Adam/dense_1/kernel/m/AssignAssignVariableOptraining/Adam/dense_1/kernel/m0training/Adam/dense_1/kernel/m/Initializer/zeros*
dtype0
?
2training/Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?*
dtype0
?
.training/Adam/dense_1/bias/m/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/dense_1/bias/mVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*-
shared_nametraining/Adam/dense_1/bias/m
?
=training/Adam/dense_1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_1/bias/m*
_class
loc:@dense_1/bias*
_output_shapes
: 
?
#training/Adam/dense_1/bias/m/AssignAssignVariableOptraining/Adam/dense_1/bias/m.training/Adam/dense_1/bias/m/Initializer/zeros*
dtype0
?
0training/Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/bias/m*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0
?
/training/Adam/conv2d/kernel/v/Initializer/zerosConst* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0*%
valueB*    
?
training/Adam/conv2d/kernel/vVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*.
shared_nametraining/Adam/conv2d/kernel/v
?
>training/Adam/conv2d/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d/kernel/v* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
?
$training/Adam/conv2d/kernel/v/AssignAssignVariableOptraining/Adam/conv2d/kernel/v/training/Adam/conv2d/kernel/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d/kernel/v* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
?
-training/Adam/conv2d/bias/v/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/conv2d/bias/vVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*,
shared_nametraining/Adam/conv2d/bias/v
?
<training/Adam/conv2d/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d/bias/v*
_class
loc:@conv2d/bias*
_output_shapes
: 
?
"training/Adam/conv2d/bias/v/AssignAssignVariableOptraining/Adam/conv2d/bias/v-training/Adam/conv2d/bias/v/Initializer/zeros*
dtype0
?
/training/Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d/bias/v*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0
?
Atraining/Adam/conv2d_1/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
7training/Adam/conv2d_1/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_1/kernel/v/Initializer/zerosFillAtraining/Adam/conv2d_1/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_1/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
?
training/Adam/conv2d_1/kernel/vVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape:*0
shared_name!training/Adam/conv2d_1/kernel/v
?
@training/Adam/conv2d_1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_1/kernel/v*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_1/kernel/v/AssignAssignVariableOptraining/Adam/conv2d_1/kernel/v1training/Adam/conv2d_1/kernel/v/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_1/kernel/v*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:*
dtype0
?
/training/Adam/conv2d_1/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/conv2d_1/bias/vVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape:*.
shared_nametraining/Adam/conv2d_1/bias/v
?
>training/Adam/conv2d_1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_1/bias/v* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
?
$training/Adam/conv2d_1/bias/v/AssignAssignVariableOptraining/Adam/conv2d_1/bias/v/training/Adam/conv2d_1/bias/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_1/bias/v* 
_class
loc:@conv2d_1/bias*
_output_shapes
:*
dtype0
?
Atraining/Adam/conv2d_2/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
7training/Adam/conv2d_2/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_2/kernel/v/Initializer/zerosFillAtraining/Adam/conv2d_2/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_2/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
?
training/Adam/conv2d_2/kernel/vVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape:*0
shared_name!training/Adam/conv2d_2/kernel/v
?
@training/Adam/conv2d_2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_2/kernel/v*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_2/kernel/v/AssignAssignVariableOptraining/Adam/conv2d_2/kernel/v1training/Adam/conv2d_2/kernel/v/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_2/kernel/v*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
dtype0
?
/training/Adam/conv2d_2/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/conv2d_2/bias/vVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:*.
shared_nametraining/Adam/conv2d_2/bias/v
?
>training/Adam/conv2d_2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_2/bias/v* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
?
$training/Adam/conv2d_2/bias/v/AssignAssignVariableOptraining/Adam/conv2d_2/bias/v/training/Adam/conv2d_2/bias/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_2/bias/v* 
_class
loc:@conv2d_2/bias*
_output_shapes
:*
dtype0
?
Atraining/Adam/conv2d_3/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
7training/Adam/conv2d_3/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_3/kernel/v/Initializer/zerosFillAtraining/Adam/conv2d_3/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_3/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
?
training/Adam/conv2d_3/kernel/vVarHandleOp*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
shape:*0
shared_name!training/Adam/conv2d_3/kernel/v
?
@training/Adam/conv2d_3/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_3/kernel/v*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_3/kernel/v/AssignAssignVariableOptraining/Adam/conv2d_3/kernel/v1training/Adam/conv2d_3/kernel/v/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_3/kernel/v*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
dtype0
?
/training/Adam/conv2d_3/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_3/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/conv2d_3/bias/vVarHandleOp* 
_class
loc:@conv2d_3/bias*
_output_shapes
: *
dtype0*
shape:*.
shared_nametraining/Adam/conv2d_3/bias/v
?
>training/Adam/conv2d_3/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_3/bias/v* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
?
$training/Adam/conv2d_3/bias/v/AssignAssignVariableOptraining/Adam/conv2d_3/bias/v/training/Adam/conv2d_3/bias/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_3/bias/v* 
_class
loc:@conv2d_3/bias*
_output_shapes
:*
dtype0
?
Atraining/Adam/conv2d_4/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:*
dtype0*%
valueB"             
?
7training/Adam/conv2d_4/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_4/kernel/v/Initializer/zerosFillAtraining/Adam/conv2d_4/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_4/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
?
training/Adam/conv2d_4/kernel/vVarHandleOp*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
shape: *0
shared_name!training/Adam/conv2d_4/kernel/v
?
@training/Adam/conv2d_4/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_4/kernel/v*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_4/kernel/v/AssignAssignVariableOptraining/Adam/conv2d_4/kernel/v1training/Adam/conv2d_4/kernel/v/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_4/kernel/v*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: *
dtype0
?
/training/Adam/conv2d_4/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
valueB *    
?
training/Adam/conv2d_4/bias/vVarHandleOp* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
shape: *.
shared_nametraining/Adam/conv2d_4/bias/v
?
>training/Adam/conv2d_4/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_4/bias/v* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
?
$training/Adam/conv2d_4/bias/v/AssignAssignVariableOptraining/Adam/conv2d_4/bias/v/training/Adam/conv2d_4/bias/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_4/bias/v* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0
?
Atraining/Adam/conv2d_5/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
:*
dtype0*%
valueB"              
?
7training/Adam/conv2d_5/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_5/kernel/v/Initializer/zerosFillAtraining/Adam/conv2d_5/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_5/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  
?
training/Adam/conv2d_5/kernel/vVarHandleOp*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
shape:  *0
shared_name!training/Adam/conv2d_5/kernel/v
?
@training/Adam/conv2d_5/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_5/kernel/v*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_5/kernel/v/AssignAssignVariableOptraining/Adam/conv2d_5/kernel/v1training/Adam/conv2d_5/kernel/v/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_5/kernel/v*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
/training/Adam/conv2d_5/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
valueB *    
?
training/Adam/conv2d_5/bias/vVarHandleOp* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
shape: *.
shared_nametraining/Adam/conv2d_5/bias/v
?
>training/Adam/conv2d_5/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_5/bias/v* 
_class
loc:@conv2d_5/bias*
_output_shapes
: 
?
$training/Adam/conv2d_5/bias/v/AssignAssignVariableOptraining/Adam/conv2d_5/bias/v/training/Adam/conv2d_5/bias/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_5/bias/v* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0
?
Atraining/Adam/conv2d_6/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:*
dtype0*%
valueB"          @   
?
7training/Adam/conv2d_6/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_6/kernel/v/Initializer/zerosFillAtraining/Adam/conv2d_6/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_6/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @
?
training/Adam/conv2d_6/kernel/vVarHandleOp*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
shape: @*0
shared_name!training/Adam/conv2d_6/kernel/v
?
@training/Adam/conv2d_6/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_6/kernel/v*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_6/kernel/v/AssignAssignVariableOptraining/Adam/conv2d_6/kernel/v1training/Adam/conv2d_6/kernel/v/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_6/kernel/v*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
/training/Adam/conv2d_6/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
training/Adam/conv2d_6/bias/vVarHandleOp* 
_class
loc:@conv2d_6/bias*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d_6/bias/v
?
>training/Adam/conv2d_6/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_6/bias/v* 
_class
loc:@conv2d_6/bias*
_output_shapes
: 
?
$training/Adam/conv2d_6/bias/v/AssignAssignVariableOptraining/Adam/conv2d_6/bias/v/training/Adam/conv2d_6/bias/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_6/bias/v* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@*
dtype0
?
Atraining/Adam/conv2d_7/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   @   
?
7training/Adam/conv2d_7/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_7/kernel/v/Initializer/zerosFillAtraining/Adam/conv2d_7/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_7/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@
?
training/Adam/conv2d_7/kernel/vVarHandleOp*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
shape:@@*0
shared_name!training/Adam/conv2d_7/kernel/v
?
@training/Adam/conv2d_7/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_7/kernel/v*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_7/kernel/v/AssignAssignVariableOptraining/Adam/conv2d_7/kernel/v1training/Adam/conv2d_7/kernel/v/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_7/kernel/v*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
/training/Adam/conv2d_7/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_7/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
training/Adam/conv2d_7/bias/vVarHandleOp* 
_class
loc:@conv2d_7/bias*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d_7/bias/v
?
>training/Adam/conv2d_7/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_7/bias/v* 
_class
loc:@conv2d_7/bias*
_output_shapes
: 
?
$training/Adam/conv2d_7/bias/v/AssignAssignVariableOptraining/Adam/conv2d_7/bias/v/training/Adam/conv2d_7/bias/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_7/bias/v* 
_class
loc:@conv2d_7/bias*
_output_shapes
:@*
dtype0
?
Atraining/Adam/conv2d_8/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   ?   
?
7training/Adam/conv2d_8/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_8/kernel/v/Initializer/zerosFillAtraining/Adam/conv2d_8/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_8/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?
?
training/Adam/conv2d_8/kernel/vVarHandleOp*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
shape:@?*0
shared_name!training/Adam/conv2d_8/kernel/v
?
@training/Adam/conv2d_8/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_8/kernel/v*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_8/kernel/v/AssignAssignVariableOptraining/Adam/conv2d_8/kernel/v1training/Adam/conv2d_8/kernel/v/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_8/kernel/v*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
/training/Adam/conv2d_8/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_8/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
training/Adam/conv2d_8/bias/vVarHandleOp* 
_class
loc:@conv2d_8/bias*
_output_shapes
: *
dtype0*
shape:?*.
shared_nametraining/Adam/conv2d_8/bias/v
?
>training/Adam/conv2d_8/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_8/bias/v* 
_class
loc:@conv2d_8/bias*
_output_shapes
: 
?
$training/Adam/conv2d_8/bias/v/AssignAssignVariableOptraining/Adam/conv2d_8/bias/v/training/Adam/conv2d_8/bias/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_8/bias/v* 
_class
loc:@conv2d_8/bias*
_output_shapes	
:?*
dtype0
?
Atraining/Adam/conv2d_9/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
7training/Adam/conv2d_9/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
1training/Adam/conv2d_9/kernel/v/Initializer/zerosFillAtraining/Adam/conv2d_9/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/conv2d_9/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??
?
training/Adam/conv2d_9/kernel/vVarHandleOp*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
shape:??*0
shared_name!training/Adam/conv2d_9/kernel/v
?
@training/Adam/conv2d_9/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_9/kernel/v*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: 
?
&training/Adam/conv2d_9/kernel/v/AssignAssignVariableOptraining/Adam/conv2d_9/kernel/v1training/Adam/conv2d_9/kernel/v/Initializer/zeros*
dtype0
?
3training/Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_9/kernel/v*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
/training/Adam/conv2d_9/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_9/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
training/Adam/conv2d_9/bias/vVarHandleOp* 
_class
loc:@conv2d_9/bias*
_output_shapes
: *
dtype0*
shape:?*.
shared_nametraining/Adam/conv2d_9/bias/v
?
>training/Adam/conv2d_9/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/conv2d_9/bias/v* 
_class
loc:@conv2d_9/bias*
_output_shapes
: 
?
$training/Adam/conv2d_9/bias/v/AssignAssignVariableOptraining/Adam/conv2d_9/bias/v/training/Adam/conv2d_9/bias/v/Initializer/zeros*
dtype0
?
1training/Adam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_9/bias/v* 
_class
loc:@conv2d_9/bias*
_output_shapes	
:?*
dtype0
?
>training/Adam/dense/kernel/v/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"   ?   
?
4training/Adam/dense/kernel/v/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
.training/Adam/dense/kernel/v/Initializer/zerosFill>training/Adam/dense/kernel/v/Initializer/zeros/shape_as_tensor4training/Adam/dense/kernel/v/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
training/Adam/dense/kernel/vVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nametraining/Adam/dense/kernel/v
?
=training/Adam/dense/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/kernel/v*
_class
loc:@dense/kernel*
_output_shapes
: 
?
#training/Adam/dense/kernel/v/AssignAssignVariableOptraining/Adam/dense/kernel/v.training/Adam/dense/kernel/v/Initializer/zeros*
dtype0
?
0training/Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/v*
_class
loc:@dense/kernel* 
_output_shapes
:
??*
dtype0
?
,training/Adam/dense/bias/v/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
training/Adam/dense/bias/vVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:?*+
shared_nametraining/Adam/dense/bias/v
?
;training/Adam/dense/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense/bias/v*
_class
loc:@dense/bias*
_output_shapes
: 
?
!training/Adam/dense/bias/v/AssignAssignVariableOptraining/Adam/dense/bias/v,training/Adam/dense/bias/v/Initializer/zeros*
dtype0
?
.training/Adam/dense/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/v*
_class
loc:@dense/bias*
_output_shapes	
:?*
dtype0
?
0training/Adam/dense_1/kernel/v/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?*
dtype0*
valueB	?*    
?
training/Adam/dense_1/kernel/vVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:	?*/
shared_name training/Adam/dense_1/kernel/v
?
?training/Adam/dense_1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
%training/Adam/dense_1/kernel/v/AssignAssignVariableOptraining/Adam/dense_1/kernel/v0training/Adam/dense_1/kernel/v/Initializer/zeros*
dtype0
?
2training/Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?*
dtype0
?
.training/Adam/dense_1/bias/v/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
training/Adam/dense_1/bias/vVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*-
shared_nametraining/Adam/dense_1/bias/v
?
=training/Adam/dense_1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_1/bias/v*
_class
loc:@dense_1/bias*
_output_shapes
: 
?
#training/Adam/dense_1/bias/v/AssignAssignVariableOptraining/Adam/dense_1/bias/v.training/Adam/dense_1/bias/v/Initializer/zeros*
dtype0
?
0training/Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/bias/v*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0
^
!training/Adam/Cast/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
m
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

DstT0*

SrcT0	*
_output_shapes
: 
h
training/Adam/ReadVariableOpReadVariableOptraining/Adam/decay*
_output_shapes
: *
dtype0
k
training/Adam/mulMultraining/Adam/ReadVariableOptraining/Adam/Cast*
T0*
_output_shapes
: 
X
training/Adam/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
c
training/Adam/addAddV2training/Adam/add/xtraining/Adam/mul*
T0*
_output_shapes
: 
r
training/Adam/ReadVariableOp_1ReadVariableOptraining/Adam/learning_rate*
_output_shapes
: *
dtype0
t
training/Adam/truedivRealDivtraining/Adam/ReadVariableOp_1training/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/IdentityIdentitytraining/Adam/truediv*
T0*
_output_shapes
: 
[
training/Adam/ReadVariableOp_2ReadVariableOpiter*
_output_shapes
: *
dtype0	
W
training/Adam/add_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
t
training/Adam/add_1AddV2training/Adam/ReadVariableOp_2training/Adam/add_1/y*
T0	*
_output_shapes
: 
a
training/Adam/Cast_1Casttraining/Adam/add_1*

DstT0*

SrcT0	*
_output_shapes
: 
t
'training/Adam/Identity_1/ReadVariableOpReadVariableOptraining/Adam/beta_1*
_output_shapes
: *
dtype0
n
training/Adam/Identity_1Identity'training/Adam/Identity_1/ReadVariableOp*
T0*
_output_shapes
: 
t
'training/Adam/Identity_2/ReadVariableOpReadVariableOptraining/Adam/beta_2*
_output_shapes
: *
dtype0
n
training/Adam/Identity_2Identity'training/Adam/Identity_2/ReadVariableOp*
T0*
_output_shapes
: 
i
training/Adam/PowPowtraining/Adam/Identity_1training/Adam/Cast_1*
T0*
_output_shapes
: 
k
training/Adam/Pow_1Powtraining/Adam/Identity_2training/Adam/Cast_1*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
c
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
N
training/Adam/SqrtSqrttraining/Adam/sub*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
e
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow*
T0*
_output_shapes
: 
l
training/Adam/truediv_1RealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
l
training/Adam/mul_1Multraining/Adam/Identitytraining/Adam/truediv_1*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???3
Z
training/Adam/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
l
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/Identity_1*
T0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
l
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/Identity_2*
T0*
_output_shapes
: 
?
9training/Adam/Adam/update_conv2d/kernel/ResourceApplyAdamResourceApplyAdamconv2d/kerneltraining/Adam/conv2d/kernel/mtraining/Adam/conv2d/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstItraining/Adam/gradients/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
T0* 
_class
loc:@conv2d/kernel*
use_locking(
?
7training/Adam/Adam/update_conv2d/bias/ResourceApplyAdamResourceApplyAdamconv2d/biastraining/Adam/conv2d/bias/mtraining/Adam/conv2d/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstAtraining/Adam/gradients/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@conv2d/bias*
use_locking(
?
;training/Adam/Adam/update_conv2d_1/kernel/ResourceApplyAdamResourceApplyAdamconv2d_1/kerneltraining/Adam/conv2d_1/kernel/mtraining/Adam/conv2d_1/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstKtraining/Adam/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_1/kernel*
use_locking(
?
9training/Adam/Adam/update_conv2d_1/bias/ResourceApplyAdamResourceApplyAdamconv2d_1/biastraining/Adam/conv2d_1/bias/mtraining/Adam/conv2d_1/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_1/bias*
use_locking(
?
;training/Adam/Adam/update_conv2d_2/kernel/ResourceApplyAdamResourceApplyAdamconv2d_2/kerneltraining/Adam/conv2d_2/kernel/mtraining/Adam/conv2d_2/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstKtraining/Adam/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_2/kernel*
use_locking(
?
9training/Adam/Adam/update_conv2d_2/bias/ResourceApplyAdamResourceApplyAdamconv2d_2/biastraining/Adam/conv2d_2/bias/mtraining/Adam/conv2d_2/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_2/bias*
use_locking(
?
;training/Adam/Adam/update_conv2d_3/kernel/ResourceApplyAdamResourceApplyAdamconv2d_3/kerneltraining/Adam/conv2d_3/kernel/mtraining/Adam/conv2d_3/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstKtraining/Adam/gradients/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_3/kernel*
use_locking(
?
9training/Adam/Adam/update_conv2d_3/bias/ResourceApplyAdamResourceApplyAdamconv2d_3/biastraining/Adam/conv2d_3/bias/mtraining/Adam/conv2d_3/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_3/bias*
use_locking(
?
;training/Adam/Adam/update_conv2d_4/kernel/ResourceApplyAdamResourceApplyAdamconv2d_4/kerneltraining/Adam/conv2d_4/kernel/mtraining/Adam/conv2d_4/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstKtraining/Adam/gradients/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_4/kernel*
use_locking(
?
9training/Adam/Adam/update_conv2d_4/bias/ResourceApplyAdamResourceApplyAdamconv2d_4/biastraining/Adam/conv2d_4/bias/mtraining/Adam/conv2d_4/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_4/bias*
use_locking(
?
;training/Adam/Adam/update_conv2d_5/kernel/ResourceApplyAdamResourceApplyAdamconv2d_5/kerneltraining/Adam/conv2d_5/kernel/mtraining/Adam/conv2d_5/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstKtraining/Adam/gradients/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_5/kernel*
use_locking(
?
9training/Adam/Adam/update_conv2d_5/bias/ResourceApplyAdamResourceApplyAdamconv2d_5/biastraining/Adam/conv2d_5/bias/mtraining/Adam/conv2d_5/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_5/bias*
use_locking(
?
;training/Adam/Adam/update_conv2d_6/kernel/ResourceApplyAdamResourceApplyAdamconv2d_6/kerneltraining/Adam/conv2d_6/kernel/mtraining/Adam/conv2d_6/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstKtraining/Adam/gradients/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_6/kernel*
use_locking(
?
9training/Adam/Adam/update_conv2d_6/bias/ResourceApplyAdamResourceApplyAdamconv2d_6/biastraining/Adam/conv2d_6/bias/mtraining/Adam/conv2d_6/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_6/bias*
use_locking(
?
;training/Adam/Adam/update_conv2d_7/kernel/ResourceApplyAdamResourceApplyAdamconv2d_7/kerneltraining/Adam/conv2d_7/kernel/mtraining/Adam/conv2d_7/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstKtraining/Adam/gradients/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_7/kernel*
use_locking(
?
9training/Adam/Adam/update_conv2d_7/bias/ResourceApplyAdamResourceApplyAdamconv2d_7/biastraining/Adam/conv2d_7/bias/mtraining/Adam/conv2d_7/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_7/bias*
use_locking(
?
;training/Adam/Adam/update_conv2d_8/kernel/ResourceApplyAdamResourceApplyAdamconv2d_8/kerneltraining/Adam/conv2d_8/kernel/mtraining/Adam/conv2d_8/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstKtraining/Adam/gradients/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_8/kernel*
use_locking(
?
9training/Adam/Adam/update_conv2d_8/bias/ResourceApplyAdamResourceApplyAdamconv2d_8/biastraining/Adam/conv2d_8/bias/mtraining/Adam/conv2d_8/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_8/bias*
use_locking(
?
;training/Adam/Adam/update_conv2d_9/kernel/ResourceApplyAdamResourceApplyAdamconv2d_9/kerneltraining/Adam/conv2d_9/kernel/mtraining/Adam/conv2d_9/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstKtraining/Adam/gradients/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_9/kernel*
use_locking(
?
9training/Adam/Adam/update_conv2d_9/bias/ResourceApplyAdamResourceApplyAdamconv2d_9/biastraining/Adam/conv2d_9/bias/mtraining/Adam/conv2d_9/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/conv2d_9/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_9/bias*
use_locking(
?
8training/Adam/Adam/update_dense/kernel/ResourceApplyAdamResourceApplyAdamdense/kerneltraining/Adam/dense/kernel/mtraining/Adam/dense/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const<training/Adam/gradients/gradients/dense/MatMul_grad/MatMul_1*
T0*
_class
loc:@dense/kernel*
use_locking(
?
6training/Adam/Adam/update_dense/bias/ResourceApplyAdamResourceApplyAdam
dense/biastraining/Adam/dense/bias/mtraining/Adam/dense/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const@training/Adam/gradients/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@dense/bias*
use_locking(
?
:training/Adam/Adam/update_dense_1/kernel/ResourceApplyAdamResourceApplyAdamdense_1/kerneltraining/Adam/dense_1/kernel/mtraining/Adam/dense_1/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const>training/Adam/gradients/gradients/dense_1/MatMul_grad/MatMul_1*
T0*!
_class
loc:@dense_1/kernel*
use_locking(
?
8training/Adam/Adam/update_dense_1/bias/ResourceApplyAdamResourceApplyAdamdense_1/biastraining/Adam/dense_1/bias/mtraining/Adam/dense_1/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstBtraining/Adam/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@dense_1/bias*
use_locking(
?
training/Adam/Adam/group_depsNoOp8^training/Adam/Adam/update_conv2d/bias/ResourceApplyAdam:^training/Adam/Adam/update_conv2d/kernel/ResourceApplyAdam:^training/Adam/Adam/update_conv2d_1/bias/ResourceApplyAdam<^training/Adam/Adam/update_conv2d_1/kernel/ResourceApplyAdam:^training/Adam/Adam/update_conv2d_2/bias/ResourceApplyAdam<^training/Adam/Adam/update_conv2d_2/kernel/ResourceApplyAdam:^training/Adam/Adam/update_conv2d_3/bias/ResourceApplyAdam<^training/Adam/Adam/update_conv2d_3/kernel/ResourceApplyAdam:^training/Adam/Adam/update_conv2d_4/bias/ResourceApplyAdam<^training/Adam/Adam/update_conv2d_4/kernel/ResourceApplyAdam:^training/Adam/Adam/update_conv2d_5/bias/ResourceApplyAdam<^training/Adam/Adam/update_conv2d_5/kernel/ResourceApplyAdam:^training/Adam/Adam/update_conv2d_6/bias/ResourceApplyAdam<^training/Adam/Adam/update_conv2d_6/kernel/ResourceApplyAdam:^training/Adam/Adam/update_conv2d_7/bias/ResourceApplyAdam<^training/Adam/Adam/update_conv2d_7/kernel/ResourceApplyAdam:^training/Adam/Adam/update_conv2d_8/bias/ResourceApplyAdam<^training/Adam/Adam/update_conv2d_8/kernel/ResourceApplyAdam:^training/Adam/Adam/update_conv2d_9/bias/ResourceApplyAdam<^training/Adam/Adam/update_conv2d_9/kernel/ResourceApplyAdam7^training/Adam/Adam/update_dense/bias/ResourceApplyAdam9^training/Adam/Adam/update_dense/kernel/ResourceApplyAdam9^training/Adam/Adam/update_dense_1/bias/ResourceApplyAdam;^training/Adam/Adam/update_dense_1/kernel/ResourceApplyAdam
z
training/Adam/Adam/ConstConst^training/Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R
j
&training/Adam/Adam/AssignAddVariableOpAssignAddVariableOpitertraining/Adam/Adam/Const*
dtype0	
Q
training_1/group_depsNoOp	^loss/mul'^training/Adam/Adam/AssignAddVariableOp
Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bmodel
?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
Q
IdentityIdentity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOpAssignVariableOptraining/Adam/conv2d/kernel/mIdentity"/device:CPU:0*
dtype0
?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_1IdentityRestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:
m
AssignVariableOp_1AssignVariableOptraining/Adam/conv2d/kernel/v
Identity_1"/device:CPU:0*
dtype0
?
RestoreV2_2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_2IdentityRestoreV2_2"/device:CPU:0*
T0*
_output_shapes
:
k
AssignVariableOp_2AssignVariableOptraining/Adam/conv2d/bias/m
Identity_2"/device:CPU:0*
dtype0
?
RestoreV2_3/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_3IdentityRestoreV2_3"/device:CPU:0*
T0*
_output_shapes
:
k
AssignVariableOp_3AssignVariableOptraining/Adam/conv2d/bias/v
Identity_3"/device:CPU:0*
dtype0
?
RestoreV2_4/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_4IdentityRestoreV2_4"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_4AssignVariableOptraining/Adam/conv2d_1/kernel/m
Identity_4"/device:CPU:0*
dtype0
?
RestoreV2_5/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_5	RestoreV2ConstRestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_5IdentityRestoreV2_5"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_5AssignVariableOptraining/Adam/conv2d_1/kernel/v
Identity_5"/device:CPU:0*
dtype0
?
RestoreV2_6/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_6	RestoreV2ConstRestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_6IdentityRestoreV2_6"/device:CPU:0*
T0*
_output_shapes
:
m
AssignVariableOp_6AssignVariableOptraining/Adam/conv2d_1/bias/m
Identity_6"/device:CPU:0*
dtype0
?
RestoreV2_7/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_7	RestoreV2ConstRestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_7IdentityRestoreV2_7"/device:CPU:0*
T0*
_output_shapes
:
m
AssignVariableOp_7AssignVariableOptraining/Adam/conv2d_1/bias/v
Identity_7"/device:CPU:0*
dtype0
?
RestoreV2_8/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_8	RestoreV2ConstRestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_8IdentityRestoreV2_8"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_8AssignVariableOptraining/Adam/conv2d_2/kernel/m
Identity_8"/device:CPU:0*
dtype0
?
RestoreV2_9/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_9	RestoreV2ConstRestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_9IdentityRestoreV2_9"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_9AssignVariableOptraining/Adam/conv2d_2/kernel/v
Identity_9"/device:CPU:0*
dtype0
?
RestoreV2_10/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_10	RestoreV2ConstRestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_10IdentityRestoreV2_10"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_10AssignVariableOptraining/Adam/conv2d_2/bias/mIdentity_10"/device:CPU:0*
dtype0
?
RestoreV2_11/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_11	RestoreV2ConstRestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_11IdentityRestoreV2_11"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_11AssignVariableOptraining/Adam/conv2d_2/bias/vIdentity_11"/device:CPU:0*
dtype0
?
RestoreV2_12/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_12	RestoreV2ConstRestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_12IdentityRestoreV2_12"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_12AssignVariableOptraining/Adam/conv2d_3/kernel/mIdentity_12"/device:CPU:0*
dtype0
?
RestoreV2_13/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_13	RestoreV2ConstRestoreV2_13/tensor_namesRestoreV2_13/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_13IdentityRestoreV2_13"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_13AssignVariableOptraining/Adam/conv2d_3/kernel/vIdentity_13"/device:CPU:0*
dtype0
?
RestoreV2_14/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_14/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_14	RestoreV2ConstRestoreV2_14/tensor_namesRestoreV2_14/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_14IdentityRestoreV2_14"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_14AssignVariableOptraining/Adam/conv2d_3/bias/mIdentity_14"/device:CPU:0*
dtype0
?
RestoreV2_15/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_15/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_15	RestoreV2ConstRestoreV2_15/tensor_namesRestoreV2_15/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_15IdentityRestoreV2_15"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_15AssignVariableOptraining/Adam/conv2d_3/bias/vIdentity_15"/device:CPU:0*
dtype0
?
RestoreV2_16/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_16/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_16	RestoreV2ConstRestoreV2_16/tensor_namesRestoreV2_16/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_16IdentityRestoreV2_16"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_16AssignVariableOptraining/Adam/conv2d_4/kernel/mIdentity_16"/device:CPU:0*
dtype0
?
RestoreV2_17/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_17/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_17	RestoreV2ConstRestoreV2_17/tensor_namesRestoreV2_17/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_17IdentityRestoreV2_17"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_17AssignVariableOptraining/Adam/conv2d_4/kernel/vIdentity_17"/device:CPU:0*
dtype0
?
RestoreV2_18/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_18/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_18	RestoreV2ConstRestoreV2_18/tensor_namesRestoreV2_18/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_18IdentityRestoreV2_18"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_18AssignVariableOptraining/Adam/conv2d_4/bias/mIdentity_18"/device:CPU:0*
dtype0
?
RestoreV2_19/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_19/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_19	RestoreV2ConstRestoreV2_19/tensor_namesRestoreV2_19/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_19IdentityRestoreV2_19"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_19AssignVariableOptraining/Adam/conv2d_4/bias/vIdentity_19"/device:CPU:0*
dtype0
?
RestoreV2_20/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_20/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_20	RestoreV2ConstRestoreV2_20/tensor_namesRestoreV2_20/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_20IdentityRestoreV2_20"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_20AssignVariableOptraining/Adam/conv2d_5/kernel/mIdentity_20"/device:CPU:0*
dtype0
?
RestoreV2_21/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_21/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_21	RestoreV2ConstRestoreV2_21/tensor_namesRestoreV2_21/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_21IdentityRestoreV2_21"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_21AssignVariableOptraining/Adam/conv2d_5/kernel/vIdentity_21"/device:CPU:0*
dtype0
?
RestoreV2_22/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_22/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_22	RestoreV2ConstRestoreV2_22/tensor_namesRestoreV2_22/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_22IdentityRestoreV2_22"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_22AssignVariableOptraining/Adam/conv2d_5/bias/mIdentity_22"/device:CPU:0*
dtype0
?
RestoreV2_23/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_23/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_23	RestoreV2ConstRestoreV2_23/tensor_namesRestoreV2_23/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_23IdentityRestoreV2_23"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_23AssignVariableOptraining/Adam/conv2d_5/bias/vIdentity_23"/device:CPU:0*
dtype0
?
RestoreV2_24/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_24/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_24	RestoreV2ConstRestoreV2_24/tensor_namesRestoreV2_24/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_24IdentityRestoreV2_24"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_24AssignVariableOptraining/Adam/conv2d_6/kernel/mIdentity_24"/device:CPU:0*
dtype0
?
RestoreV2_25/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_25/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_25	RestoreV2ConstRestoreV2_25/tensor_namesRestoreV2_25/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_25IdentityRestoreV2_25"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_25AssignVariableOptraining/Adam/conv2d_6/kernel/vIdentity_25"/device:CPU:0*
dtype0
?
RestoreV2_26/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_26/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_26	RestoreV2ConstRestoreV2_26/tensor_namesRestoreV2_26/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_26IdentityRestoreV2_26"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_26AssignVariableOptraining/Adam/conv2d_6/bias/mIdentity_26"/device:CPU:0*
dtype0
?
RestoreV2_27/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_27/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_27	RestoreV2ConstRestoreV2_27/tensor_namesRestoreV2_27/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_27IdentityRestoreV2_27"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_27AssignVariableOptraining/Adam/conv2d_6/bias/vIdentity_27"/device:CPU:0*
dtype0
?
RestoreV2_28/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_28/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_28	RestoreV2ConstRestoreV2_28/tensor_namesRestoreV2_28/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_28IdentityRestoreV2_28"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_28AssignVariableOptraining/Adam/conv2d_7/kernel/mIdentity_28"/device:CPU:0*
dtype0
?
RestoreV2_29/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_29/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_29	RestoreV2ConstRestoreV2_29/tensor_namesRestoreV2_29/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_29IdentityRestoreV2_29"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_29AssignVariableOptraining/Adam/conv2d_7/kernel/vIdentity_29"/device:CPU:0*
dtype0
?
RestoreV2_30/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_30/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_30	RestoreV2ConstRestoreV2_30/tensor_namesRestoreV2_30/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_30IdentityRestoreV2_30"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_30AssignVariableOptraining/Adam/conv2d_7/bias/mIdentity_30"/device:CPU:0*
dtype0
?
RestoreV2_31/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_31/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_31	RestoreV2ConstRestoreV2_31/tensor_namesRestoreV2_31/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_31IdentityRestoreV2_31"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_31AssignVariableOptraining/Adam/conv2d_7/bias/vIdentity_31"/device:CPU:0*
dtype0
?
RestoreV2_32/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_32/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_32	RestoreV2ConstRestoreV2_32/tensor_namesRestoreV2_32/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_32IdentityRestoreV2_32"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_32AssignVariableOptraining/Adam/conv2d_8/kernel/mIdentity_32"/device:CPU:0*
dtype0
?
RestoreV2_33/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_33/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_33	RestoreV2ConstRestoreV2_33/tensor_namesRestoreV2_33/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_33IdentityRestoreV2_33"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_33AssignVariableOptraining/Adam/conv2d_8/kernel/vIdentity_33"/device:CPU:0*
dtype0
?
RestoreV2_34/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_34/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_34	RestoreV2ConstRestoreV2_34/tensor_namesRestoreV2_34/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_34IdentityRestoreV2_34"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_34AssignVariableOptraining/Adam/conv2d_8/bias/mIdentity_34"/device:CPU:0*
dtype0
?
RestoreV2_35/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_35/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_35	RestoreV2ConstRestoreV2_35/tensor_namesRestoreV2_35/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_35IdentityRestoreV2_35"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_35AssignVariableOptraining/Adam/conv2d_8/bias/vIdentity_35"/device:CPU:0*
dtype0
?
RestoreV2_36/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_36/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_36	RestoreV2ConstRestoreV2_36/tensor_namesRestoreV2_36/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_36IdentityRestoreV2_36"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_36AssignVariableOptraining/Adam/conv2d_9/kernel/mIdentity_36"/device:CPU:0*
dtype0
?
RestoreV2_37/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_37/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_37	RestoreV2ConstRestoreV2_37/tensor_namesRestoreV2_37/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_37IdentityRestoreV2_37"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_37AssignVariableOptraining/Adam/conv2d_9/kernel/vIdentity_37"/device:CPU:0*
dtype0
?
RestoreV2_38/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_38/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_38	RestoreV2ConstRestoreV2_38/tensor_namesRestoreV2_38/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_38IdentityRestoreV2_38"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_38AssignVariableOptraining/Adam/conv2d_9/bias/mIdentity_38"/device:CPU:0*
dtype0
?
RestoreV2_39/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*e
value\BZBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_39/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_39	RestoreV2ConstRestoreV2_39/tensor_namesRestoreV2_39/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_39IdentityRestoreV2_39"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_39AssignVariableOptraining/Adam/conv2d_9/bias/vIdentity_39"/device:CPU:0*
dtype0
?
RestoreV2_40/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*h
value_B]BSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_40/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_40	RestoreV2ConstRestoreV2_40/tensor_namesRestoreV2_40/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_40IdentityRestoreV2_40"/device:CPU:0*
T0*
_output_shapes
:
n
AssignVariableOp_40AssignVariableOptraining/Adam/dense/kernel/mIdentity_40"/device:CPU:0*
dtype0
?
RestoreV2_41/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*h
value_B]BSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_41/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_41	RestoreV2ConstRestoreV2_41/tensor_namesRestoreV2_41/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_41IdentityRestoreV2_41"/device:CPU:0*
T0*
_output_shapes
:
n
AssignVariableOp_41AssignVariableOptraining/Adam/dense/kernel/vIdentity_41"/device:CPU:0*
dtype0
?
RestoreV2_42/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*f
value]B[BQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_42/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_42	RestoreV2ConstRestoreV2_42/tensor_namesRestoreV2_42/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_42IdentityRestoreV2_42"/device:CPU:0*
T0*
_output_shapes
:
l
AssignVariableOp_42AssignVariableOptraining/Adam/dense/bias/mIdentity_42"/device:CPU:0*
dtype0
?
RestoreV2_43/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*f
value]B[BQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_43/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_43	RestoreV2ConstRestoreV2_43/tensor_namesRestoreV2_43/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_43IdentityRestoreV2_43"/device:CPU:0*
T0*
_output_shapes
:
l
AssignVariableOp_43AssignVariableOptraining/Adam/dense/bias/vIdentity_43"/device:CPU:0*
dtype0
?
RestoreV2_44/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*h
value_B]BSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_44/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_44	RestoreV2ConstRestoreV2_44/tensor_namesRestoreV2_44/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_44IdentityRestoreV2_44"/device:CPU:0*
T0*
_output_shapes
:
p
AssignVariableOp_44AssignVariableOptraining/Adam/dense_1/kernel/mIdentity_44"/device:CPU:0*
dtype0
?
RestoreV2_45/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*h
value_B]BSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_45/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_45	RestoreV2ConstRestoreV2_45/tensor_namesRestoreV2_45/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_45IdentityRestoreV2_45"/device:CPU:0*
T0*
_output_shapes
:
p
AssignVariableOp_45AssignVariableOptraining/Adam/dense_1/kernel/vIdentity_45"/device:CPU:0*
dtype0
?
RestoreV2_46/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*f
value]B[BQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_46/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_46	RestoreV2ConstRestoreV2_46/tensor_namesRestoreV2_46/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_46IdentityRestoreV2_46"/device:CPU:0*
T0*
_output_shapes
:
n
AssignVariableOp_46AssignVariableOptraining/Adam/dense_1/bias/mIdentity_46"/device:CPU:0*
dtype0
?
RestoreV2_47/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*f
value]B[BQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_47/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_47	RestoreV2ConstRestoreV2_47/tensor_namesRestoreV2_47/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
W
Identity_47IdentityRestoreV2_47"/device:CPU:0*
T0*
_output_shapes
:
n
AssignVariableOp_47AssignVariableOptraining/Adam/dense_1/bias/vIdentity_47"/device:CPU:0*
dtype0
?
RestoreV2_48/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
RestoreV2_48/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
RestoreV2_48	RestoreV2ConstRestoreV2_48/tensor_namesRestoreV2_48/shape_and_slices"/device:CPU:0*?
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	
W
Identity_48IdentityRestoreV2_48"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_48AssignVariableOpconv2d/biasIdentity_48"/device:CPU:0*
dtype0
Y
Identity_49IdentityRestoreV2_48:1"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_49AssignVariableOpconv2d/kernelIdentity_49"/device:CPU:0*
dtype0
Y
Identity_50IdentityRestoreV2_48:2"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_50AssignVariableOpconv2d_1/biasIdentity_50"/device:CPU:0*
dtype0
Y
Identity_51IdentityRestoreV2_48:3"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_51AssignVariableOpconv2d_1/kernelIdentity_51"/device:CPU:0*
dtype0
Y
Identity_52IdentityRestoreV2_48:4"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_52AssignVariableOp
dense/biasIdentity_52"/device:CPU:0*
dtype0
Y
Identity_53IdentityRestoreV2_48:5"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_53AssignVariableOpdense/kernelIdentity_53"/device:CPU:0*
dtype0
Y
Identity_54IdentityRestoreV2_48:6"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_54AssignVariableOpdense_1/biasIdentity_54"/device:CPU:0*
dtype0
Y
Identity_55IdentityRestoreV2_48:7"/device:CPU:0*
T0*
_output_shapes
:
`
AssignVariableOp_55AssignVariableOpdense_1/kernelIdentity_55"/device:CPU:0*
dtype0
Y
Identity_56IdentityRestoreV2_48:8"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_56AssignVariableOpconv2d_2/biasIdentity_56"/device:CPU:0*
dtype0
Y
Identity_57IdentityRestoreV2_48:9"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_57AssignVariableOpconv2d_2/kernelIdentity_57"/device:CPU:0*
dtype0
Z
Identity_58IdentityRestoreV2_48:10"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_58AssignVariableOpconv2d_3/biasIdentity_58"/device:CPU:0*
dtype0
Z
Identity_59IdentityRestoreV2_48:11"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_59AssignVariableOpconv2d_3/kernelIdentity_59"/device:CPU:0*
dtype0
Z
Identity_60IdentityRestoreV2_48:12"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_60AssignVariableOpconv2d_4/biasIdentity_60"/device:CPU:0*
dtype0
Z
Identity_61IdentityRestoreV2_48:13"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_61AssignVariableOpconv2d_4/kernelIdentity_61"/device:CPU:0*
dtype0
Z
Identity_62IdentityRestoreV2_48:14"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_62AssignVariableOpconv2d_5/biasIdentity_62"/device:CPU:0*
dtype0
Z
Identity_63IdentityRestoreV2_48:15"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_63AssignVariableOpconv2d_5/kernelIdentity_63"/device:CPU:0*
dtype0
Z
Identity_64IdentityRestoreV2_48:16"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_64AssignVariableOpconv2d_6/biasIdentity_64"/device:CPU:0*
dtype0
Z
Identity_65IdentityRestoreV2_48:17"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_65AssignVariableOpconv2d_6/kernelIdentity_65"/device:CPU:0*
dtype0
Z
Identity_66IdentityRestoreV2_48:18"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_66AssignVariableOpconv2d_7/biasIdentity_66"/device:CPU:0*
dtype0
Z
Identity_67IdentityRestoreV2_48:19"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_67AssignVariableOpconv2d_7/kernelIdentity_67"/device:CPU:0*
dtype0
Z
Identity_68IdentityRestoreV2_48:20"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_68AssignVariableOpconv2d_8/biasIdentity_68"/device:CPU:0*
dtype0
Z
Identity_69IdentityRestoreV2_48:21"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_69AssignVariableOpconv2d_8/kernelIdentity_69"/device:CPU:0*
dtype0
Z
Identity_70IdentityRestoreV2_48:22"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_70AssignVariableOpconv2d_9/biasIdentity_70"/device:CPU:0*
dtype0
Z
Identity_71IdentityRestoreV2_48:23"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_71AssignVariableOpconv2d_9/kernelIdentity_71"/device:CPU:0*
dtype0
Z
Identity_72IdentityRestoreV2_48:24"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_72AssignVariableOptraining/Adam/beta_1Identity_72"/device:CPU:0*
dtype0
Z
Identity_73IdentityRestoreV2_48:25"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_73AssignVariableOptraining/Adam/beta_2Identity_73"/device:CPU:0*
dtype0
Z
Identity_74IdentityRestoreV2_48:26"/device:CPU:0*
T0*
_output_shapes
:
e
AssignVariableOp_74AssignVariableOptraining/Adam/decayIdentity_74"/device:CPU:0*
dtype0
Z
Identity_75IdentityRestoreV2_48:27"/device:CPU:0*
T0	*
_output_shapes
:
V
AssignVariableOp_75AssignVariableOpiterIdentity_75"/device:CPU:0*
dtype0	
Z
Identity_76IdentityRestoreV2_48:28"/device:CPU:0*
T0*
_output_shapes
:
m
AssignVariableOp_76AssignVariableOptraining/Adam/learning_rateIdentity_76"/device:CPU:0*
dtype0
Q
VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
_
VarIsInitializedOp_1VarIsInitializedOptraining/Adam/conv2d/bias/m*
_output_shapes
: 
a
VarIsInitializedOp_2VarIsInitializedOptraining/Adam/conv2d_3/bias/m*
_output_shapes
: 
c
VarIsInitializedOp_3VarIsInitializedOptraining/Adam/conv2d_4/kernel/m*
_output_shapes
: 
a
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/conv2d_6/bias/v*
_output_shapes
: 
b
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/dense_1/kernel/v*
_output_shapes
: 
H
VarIsInitializedOp_6VarIsInitializedOpiter*
_output_shapes
: 
a
VarIsInitializedOp_7VarIsInitializedOptraining/Adam/conv2d_1/bias/m*
_output_shapes
: 
a
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/conv2d_4/bias/m*
_output_shapes
: 
a
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/conv2d_7/bias/v*
_output_shapes
: 
a
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/dense_1/bias/v*
_output_shapes
: 
a
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/dense/kernel/v*
_output_shapes
: 
d
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/conv2d_3/kernel/m*
_output_shapes
: 
_
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/dense/bias/m*
_output_shapes
: 
d
VarIsInitializedOp_14VarIsInitializedOptraining/Adam/conv2d_6/kernel/v*
_output_shapes
: 
T
VarIsInitializedOp_15VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
Y
VarIsInitializedOp_16VarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 
d
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/conv2d_1/kernel/v*
_output_shapes
: 
R
VarIsInitializedOp_18VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
b
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/conv2d_6/bias/m*
_output_shapes
: 
b
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/conv2d_4/bias/v*
_output_shapes
: 
b
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/conv2d_9/bias/v*
_output_shapes
: 
T
VarIsInitializedOp_22VarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
T
VarIsInitializedOp_23VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
T
VarIsInitializedOp_24VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
J
VarIsInitializedOp_25VarIsInitializedOptotal*
_output_shapes
: 
`
VarIsInitializedOp_26VarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 
d
VarIsInitializedOp_27VarIsInitializedOptraining/Adam/conv2d_9/kernel/m*
_output_shapes
: 
R
VarIsInitializedOp_28VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
b
VarIsInitializedOp_29VarIsInitializedOptraining/Adam/conv2d_9/bias/m*
_output_shapes
: 
X
VarIsInitializedOp_30VarIsInitializedOptraining/Adam/decay*
_output_shapes
: 
b
VarIsInitializedOp_31VarIsInitializedOptraining/Adam/conv2d_7/bias/m*
_output_shapes
: 
T
VarIsInitializedOp_32VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
T
VarIsInitializedOp_33VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
T
VarIsInitializedOp_34VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
R
VarIsInitializedOp_35VarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
Q
VarIsInitializedOp_36VarIsInitializedOpdense/kernel*
_output_shapes
: 
b
VarIsInitializedOp_37VarIsInitializedOptraining/Adam/conv2d_5/bias/m*
_output_shapes
: 
b
VarIsInitializedOp_38VarIsInitializedOptraining/Adam/conv2d_1/bias/v*
_output_shapes
: 
b
VarIsInitializedOp_39VarIsInitializedOptraining/Adam/conv2d_2/bias/v*
_output_shapes
: 
b
VarIsInitializedOp_40VarIsInitializedOptraining/Adam/conv2d_3/bias/v*
_output_shapes
: 
b
VarIsInitializedOp_41VarIsInitializedOptraining/Adam/conv2d_8/bias/v*
_output_shapes
: 
b
VarIsInitializedOp_42VarIsInitializedOptraining/Adam/conv2d_2/bias/m*
_output_shapes
: 
R
VarIsInitializedOp_43VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
d
VarIsInitializedOp_44VarIsInitializedOptraining/Adam/conv2d_7/kernel/m*
_output_shapes
: 
b
VarIsInitializedOp_45VarIsInitializedOptraining/Adam/conv2d_8/bias/m*
_output_shapes
: 
R
VarIsInitializedOp_46VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
_
VarIsInitializedOp_47VarIsInitializedOptraining/Adam/dense/bias/v*
_output_shapes
: 
P
VarIsInitializedOp_48VarIsInitializedOpconv2d/bias*
_output_shapes
: 
R
VarIsInitializedOp_49VarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
d
VarIsInitializedOp_50VarIsInitializedOptraining/Adam/conv2d_7/kernel/v*
_output_shapes
: 
d
VarIsInitializedOp_51VarIsInitializedOptraining/Adam/conv2d_9/kernel/v*
_output_shapes
: 
S
VarIsInitializedOp_52VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
d
VarIsInitializedOp_53VarIsInitializedOptraining/Adam/conv2d_6/kernel/m*
_output_shapes
: 
d
VarIsInitializedOp_54VarIsInitializedOptraining/Adam/conv2d_8/kernel/m*
_output_shapes
: 
a
VarIsInitializedOp_55VarIsInitializedOptraining/Adam/dense/kernel/m*
_output_shapes
: 
b
VarIsInitializedOp_56VarIsInitializedOptraining/Adam/conv2d/kernel/v*
_output_shapes
: 
d
VarIsInitializedOp_57VarIsInitializedOptraining/Adam/conv2d_4/kernel/v*
_output_shapes
: 
d
VarIsInitializedOp_58VarIsInitializedOptraining/Adam/conv2d_5/kernel/m*
_output_shapes
: 
d
VarIsInitializedOp_59VarIsInitializedOptraining/Adam/conv2d_3/kernel/v*
_output_shapes
: 
d
VarIsInitializedOp_60VarIsInitializedOptraining/Adam/conv2d_8/kernel/v*
_output_shapes
: 
R
VarIsInitializedOp_61VarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
J
VarIsInitializedOp_62VarIsInitializedOpcount*
_output_shapes
: 
Y
VarIsInitializedOp_63VarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 
b
VarIsInitializedOp_64VarIsInitializedOptraining/Adam/conv2d/kernel/m*
_output_shapes
: 
R
VarIsInitializedOp_65VarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
d
VarIsInitializedOp_66VarIsInitializedOptraining/Adam/conv2d_5/kernel/v*
_output_shapes
: 
O
VarIsInitializedOp_67VarIsInitializedOp
dense/bias*
_output_shapes
: 
c
VarIsInitializedOp_68VarIsInitializedOptraining/Adam/dense_1/kernel/m*
_output_shapes
: 
T
VarIsInitializedOp_69VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
R
VarIsInitializedOp_70VarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
d
VarIsInitializedOp_71VarIsInitializedOptraining/Adam/conv2d_1/kernel/m*
_output_shapes
: 
d
VarIsInitializedOp_72VarIsInitializedOptraining/Adam/conv2d_2/kernel/v*
_output_shapes
: 
R
VarIsInitializedOp_73VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
Q
VarIsInitializedOp_74VarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
VarIsInitializedOp_75VarIsInitializedOptraining/Adam/conv2d_5/bias/v*
_output_shapes
: 
d
VarIsInitializedOp_76VarIsInitializedOptraining/Adam/conv2d_2/kernel/m*
_output_shapes
: 
`
VarIsInitializedOp_77VarIsInitializedOptraining/Adam/conv2d/bias/v*
_output_shapes
: 
a
VarIsInitializedOp_78VarIsInitializedOptraining/Adam/dense_1/bias/m*
_output_shapes
: 
?
initNoOp^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^conv2d_8/bias/Assign^conv2d_8/kernel/Assign^conv2d_9/bias/Assign^conv2d_9/kernel/Assign^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^iter/Assign^total/Assign^training/Adam/beta_1/Assign^training/Adam/beta_2/Assign#^training/Adam/conv2d/bias/m/Assign#^training/Adam/conv2d/bias/v/Assign%^training/Adam/conv2d/kernel/m/Assign%^training/Adam/conv2d/kernel/v/Assign%^training/Adam/conv2d_1/bias/m/Assign%^training/Adam/conv2d_1/bias/v/Assign'^training/Adam/conv2d_1/kernel/m/Assign'^training/Adam/conv2d_1/kernel/v/Assign%^training/Adam/conv2d_2/bias/m/Assign%^training/Adam/conv2d_2/bias/v/Assign'^training/Adam/conv2d_2/kernel/m/Assign'^training/Adam/conv2d_2/kernel/v/Assign%^training/Adam/conv2d_3/bias/m/Assign%^training/Adam/conv2d_3/bias/v/Assign'^training/Adam/conv2d_3/kernel/m/Assign'^training/Adam/conv2d_3/kernel/v/Assign%^training/Adam/conv2d_4/bias/m/Assign%^training/Adam/conv2d_4/bias/v/Assign'^training/Adam/conv2d_4/kernel/m/Assign'^training/Adam/conv2d_4/kernel/v/Assign%^training/Adam/conv2d_5/bias/m/Assign%^training/Adam/conv2d_5/bias/v/Assign'^training/Adam/conv2d_5/kernel/m/Assign'^training/Adam/conv2d_5/kernel/v/Assign%^training/Adam/conv2d_6/bias/m/Assign%^training/Adam/conv2d_6/bias/v/Assign'^training/Adam/conv2d_6/kernel/m/Assign'^training/Adam/conv2d_6/kernel/v/Assign%^training/Adam/conv2d_7/bias/m/Assign%^training/Adam/conv2d_7/bias/v/Assign'^training/Adam/conv2d_7/kernel/m/Assign'^training/Adam/conv2d_7/kernel/v/Assign%^training/Adam/conv2d_8/bias/m/Assign%^training/Adam/conv2d_8/bias/v/Assign'^training/Adam/conv2d_8/kernel/m/Assign'^training/Adam/conv2d_8/kernel/v/Assign%^training/Adam/conv2d_9/bias/m/Assign%^training/Adam/conv2d_9/bias/v/Assign'^training/Adam/conv2d_9/kernel/m/Assign'^training/Adam/conv2d_9/kernel/v/Assign^training/Adam/decay/Assign"^training/Adam/dense/bias/m/Assign"^training/Adam/dense/bias/v/Assign$^training/Adam/dense/kernel/m/Assign$^training/Adam/dense/kernel/v/Assign$^training/Adam/dense_1/bias/m/Assign$^training/Adam/dense_1/bias/v/Assign&^training/Adam/dense_1/kernel/m/Assign&^training/Adam/dense_1/kernel/v/Assign#^training/Adam/learning_rate/Assign
W
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB B 
W
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB B 
s
StaticRegexFullMatchStaticRegexFullMatchConst_2"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
\
Const_3Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
a
Const_4Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
h
SelectSelectStaticRegexFullMatchConst_3Const_4"/device:CPU:**
T0*
_output_shapes
: 
Y

StringJoin
StringJoinConst_2Select"/device:CPU:**
N*
_output_shapes
: 
L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
?,
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*?+
value?+B?+NB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*?
value?B?NB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpiter/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOp1training/Adam/conv2d/kernel/m/Read/ReadVariableOp/training/Adam/conv2d/bias/m/Read/ReadVariableOp3training/Adam/conv2d_1/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_1/bias/m/Read/ReadVariableOp3training/Adam/conv2d_2/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_2/bias/m/Read/ReadVariableOp3training/Adam/conv2d_3/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_3/bias/m/Read/ReadVariableOp3training/Adam/conv2d_4/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_4/bias/m/Read/ReadVariableOp3training/Adam/conv2d_5/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_5/bias/m/Read/ReadVariableOp3training/Adam/conv2d_6/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_6/bias/m/Read/ReadVariableOp3training/Adam/conv2d_7/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_7/bias/m/Read/ReadVariableOp3training/Adam/conv2d_8/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_8/bias/m/Read/ReadVariableOp3training/Adam/conv2d_9/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_9/bias/m/Read/ReadVariableOp0training/Adam/dense/kernel/m/Read/ReadVariableOp.training/Adam/dense/bias/m/Read/ReadVariableOp2training/Adam/dense_1/kernel/m/Read/ReadVariableOp0training/Adam/dense_1/bias/m/Read/ReadVariableOp1training/Adam/conv2d/kernel/v/Read/ReadVariableOp/training/Adam/conv2d/bias/v/Read/ReadVariableOp3training/Adam/conv2d_1/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_1/bias/v/Read/ReadVariableOp3training/Adam/conv2d_2/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_2/bias/v/Read/ReadVariableOp3training/Adam/conv2d_3/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_3/bias/v/Read/ReadVariableOp3training/Adam/conv2d_4/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_4/bias/v/Read/ReadVariableOp3training/Adam/conv2d_5/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_5/bias/v/Read/ReadVariableOp3training/Adam/conv2d_6/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_6/bias/v/Read/ReadVariableOp3training/Adam/conv2d_7/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_7/bias/v/Read/ReadVariableOp3training/Adam/conv2d_8/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_8/bias/v/Read/ReadVariableOp3training/Adam/conv2d_9/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_9/bias/v/Read/ReadVariableOp0training/Adam/dense/kernel/v/Read/ReadVariableOp.training/Adam/dense/bias/v/Read/ReadVariableOp2training/Adam/dense_1/kernel/v/Read/ReadVariableOp0training/Adam/dense_1/bias/v/Read/ReadVariableOpConst_1"/device:CPU:0*\
dtypesR
P2N	
?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
h
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixesConst_2"/device:CPU:0
e
Identity_77IdentityConst_2^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
W
div_no_nan/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
_output_shapes
: *
dtype0
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_78Identity
div_no_nan*
T0*
_output_shapes
: 
}
metric_op_wrapperConst'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0*
valueB 
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
?,
save/SaveV2/tensor_namesConst*
_output_shapes
:M*
dtype0*?+
value?+B?+MB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:M*
dtype0*?
value?B?MB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/bias/Read/ReadVariableOp/training/Adam/conv2d/bias/m/Read/ReadVariableOp/training/Adam/conv2d/bias/v/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp1training/Adam/conv2d/kernel/m/Read/ReadVariableOp1training/Adam/conv2d/kernel/v/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp1training/Adam/conv2d_1/bias/m/Read/ReadVariableOp1training/Adam/conv2d_1/bias/v/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp3training/Adam/conv2d_1/kernel/m/Read/ReadVariableOp3training/Adam/conv2d_1/kernel/v/Read/ReadVariableOpdense/bias/Read/ReadVariableOp.training/Adam/dense/bias/m/Read/ReadVariableOp.training/Adam/dense/bias/v/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp0training/Adam/dense/kernel/m/Read/ReadVariableOp0training/Adam/dense/kernel/v/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp0training/Adam/dense_1/bias/m/Read/ReadVariableOp0training/Adam/dense_1/bias/v/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp2training/Adam/dense_1/kernel/m/Read/ReadVariableOp2training/Adam/dense_1/kernel/v/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp1training/Adam/conv2d_2/bias/m/Read/ReadVariableOp1training/Adam/conv2d_2/bias/v/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp3training/Adam/conv2d_2/kernel/m/Read/ReadVariableOp3training/Adam/conv2d_2/kernel/v/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp1training/Adam/conv2d_3/bias/m/Read/ReadVariableOp1training/Adam/conv2d_3/bias/v/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp3training/Adam/conv2d_3/kernel/m/Read/ReadVariableOp3training/Adam/conv2d_3/kernel/v/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp1training/Adam/conv2d_4/bias/m/Read/ReadVariableOp1training/Adam/conv2d_4/bias/v/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp3training/Adam/conv2d_4/kernel/m/Read/ReadVariableOp3training/Adam/conv2d_4/kernel/v/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp1training/Adam/conv2d_5/bias/m/Read/ReadVariableOp1training/Adam/conv2d_5/bias/v/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp3training/Adam/conv2d_5/kernel/m/Read/ReadVariableOp3training/Adam/conv2d_5/kernel/v/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp1training/Adam/conv2d_6/bias/m/Read/ReadVariableOp1training/Adam/conv2d_6/bias/v/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp3training/Adam/conv2d_6/kernel/m/Read/ReadVariableOp3training/Adam/conv2d_6/kernel/v/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp1training/Adam/conv2d_7/bias/m/Read/ReadVariableOp1training/Adam/conv2d_7/bias/v/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp3training/Adam/conv2d_7/kernel/m/Read/ReadVariableOp3training/Adam/conv2d_7/kernel/v/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp1training/Adam/conv2d_8/bias/m/Read/ReadVariableOp1training/Adam/conv2d_8/bias/v/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp3training/Adam/conv2d_8/kernel/m/Read/ReadVariableOp3training/Adam/conv2d_8/kernel/v/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp1training/Adam/conv2d_9/bias/m/Read/ReadVariableOp1training/Adam/conv2d_9/bias/v/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp3training/Adam/conv2d_9/kernel/m/Read/ReadVariableOp3training/Adam/conv2d_9/kernel/v/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOpiter/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOp*[
dtypesQ
O2M	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?,
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:M*
dtype0*?+
value?+B?+MB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:M*
dtype0*?
value?B?MB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*[
dtypesQ
O2M	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOpconv2d/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
f
save/AssignVariableOp_1AssignVariableOptraining/Adam/conv2d/bias/msave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
f
save/AssignVariableOp_2AssignVariableOptraining/Adam/conv2d/bias/vsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
X
save/AssignVariableOp_3AssignVariableOpconv2d/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
h
save/AssignVariableOp_4AssignVariableOptraining/Adam/conv2d/kernel/msave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
h
save/AssignVariableOp_5AssignVariableOptraining/Adam/conv2d/kernel/vsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
X
save/AssignVariableOp_6AssignVariableOpconv2d_1/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
h
save/AssignVariableOp_7AssignVariableOptraining/Adam/conv2d_1/bias/msave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
h
save/AssignVariableOp_8AssignVariableOptraining/Adam/conv2d_1/bias/vsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Z
save/AssignVariableOp_9AssignVariableOpconv2d_1/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
l
save/AssignVariableOp_10AssignVariableOptraining/Adam/conv2d_1/kernel/msave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
l
save/AssignVariableOp_11AssignVariableOptraining/Adam/conv2d_1/kernel/vsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
W
save/AssignVariableOp_12AssignVariableOp
dense/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
g
save/AssignVariableOp_13AssignVariableOptraining/Adam/dense/bias/msave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
g
save/AssignVariableOp_14AssignVariableOptraining/Adam/dense/bias/vsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0*
_output_shapes
:
Y
save/AssignVariableOp_15AssignVariableOpdense/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
i
save/AssignVariableOp_16AssignVariableOptraining/Adam/dense/kernel/msave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
i
save/AssignVariableOp_17AssignVariableOptraining/Adam/dense/kernel/vsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
Y
save/AssignVariableOp_18AssignVariableOpdense_1/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
i
save/AssignVariableOp_19AssignVariableOptraining/Adam/dense_1/bias/msave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:
i
save/AssignVariableOp_20AssignVariableOptraining/Adam/dense_1/bias/vsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0*
_output_shapes
:
[
save/AssignVariableOp_21AssignVariableOpdense_1/kernelsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:
k
save/AssignVariableOp_22AssignVariableOptraining/Adam/dense_1/kernel/msave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
T0*
_output_shapes
:
k
save/AssignVariableOp_23AssignVariableOptraining/Adam/dense_1/kernel/vsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:24*
T0*
_output_shapes
:
Z
save/AssignVariableOp_24AssignVariableOpconv2d_2/biassave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:25*
T0*
_output_shapes
:
j
save/AssignVariableOp_25AssignVariableOptraining/Adam/conv2d_2/bias/msave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:26*
T0*
_output_shapes
:
j
save/AssignVariableOp_26AssignVariableOptraining/Adam/conv2d_2/bias/vsave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:27*
T0*
_output_shapes
:
\
save/AssignVariableOp_27AssignVariableOpconv2d_2/kernelsave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:28*
T0*
_output_shapes
:
l
save/AssignVariableOp_28AssignVariableOptraining/Adam/conv2d_2/kernel/msave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:29*
T0*
_output_shapes
:
l
save/AssignVariableOp_29AssignVariableOptraining/Adam/conv2d_2/kernel/vsave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:30*
T0*
_output_shapes
:
Z
save/AssignVariableOp_30AssignVariableOpconv2d_3/biassave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:31*
T0*
_output_shapes
:
j
save/AssignVariableOp_31AssignVariableOptraining/Adam/conv2d_3/bias/msave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:32*
T0*
_output_shapes
:
j
save/AssignVariableOp_32AssignVariableOptraining/Adam/conv2d_3/bias/vsave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:33*
T0*
_output_shapes
:
\
save/AssignVariableOp_33AssignVariableOpconv2d_3/kernelsave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:34*
T0*
_output_shapes
:
l
save/AssignVariableOp_34AssignVariableOptraining/Adam/conv2d_3/kernel/msave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:35*
T0*
_output_shapes
:
l
save/AssignVariableOp_35AssignVariableOptraining/Adam/conv2d_3/kernel/vsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:36*
T0*
_output_shapes
:
Z
save/AssignVariableOp_36AssignVariableOpconv2d_4/biassave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:37*
T0*
_output_shapes
:
j
save/AssignVariableOp_37AssignVariableOptraining/Adam/conv2d_4/bias/msave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:38*
T0*
_output_shapes
:
j
save/AssignVariableOp_38AssignVariableOptraining/Adam/conv2d_4/bias/vsave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:39*
T0*
_output_shapes
:
\
save/AssignVariableOp_39AssignVariableOpconv2d_4/kernelsave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:40*
T0*
_output_shapes
:
l
save/AssignVariableOp_40AssignVariableOptraining/Adam/conv2d_4/kernel/msave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:41*
T0*
_output_shapes
:
l
save/AssignVariableOp_41AssignVariableOptraining/Adam/conv2d_4/kernel/vsave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:42*
T0*
_output_shapes
:
Z
save/AssignVariableOp_42AssignVariableOpconv2d_5/biassave/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:43*
T0*
_output_shapes
:
j
save/AssignVariableOp_43AssignVariableOptraining/Adam/conv2d_5/bias/msave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:44*
T0*
_output_shapes
:
j
save/AssignVariableOp_44AssignVariableOptraining/Adam/conv2d_5/bias/vsave/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:45*
T0*
_output_shapes
:
\
save/AssignVariableOp_45AssignVariableOpconv2d_5/kernelsave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:46*
T0*
_output_shapes
:
l
save/AssignVariableOp_46AssignVariableOptraining/Adam/conv2d_5/kernel/msave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:47*
T0*
_output_shapes
:
l
save/AssignVariableOp_47AssignVariableOptraining/Adam/conv2d_5/kernel/vsave/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:48*
T0*
_output_shapes
:
Z
save/AssignVariableOp_48AssignVariableOpconv2d_6/biassave/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:49*
T0*
_output_shapes
:
j
save/AssignVariableOp_49AssignVariableOptraining/Adam/conv2d_6/bias/msave/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:50*
T0*
_output_shapes
:
j
save/AssignVariableOp_50AssignVariableOptraining/Adam/conv2d_6/bias/vsave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:51*
T0*
_output_shapes
:
\
save/AssignVariableOp_51AssignVariableOpconv2d_6/kernelsave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:52*
T0*
_output_shapes
:
l
save/AssignVariableOp_52AssignVariableOptraining/Adam/conv2d_6/kernel/msave/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:53*
T0*
_output_shapes
:
l
save/AssignVariableOp_53AssignVariableOptraining/Adam/conv2d_6/kernel/vsave/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:54*
T0*
_output_shapes
:
Z
save/AssignVariableOp_54AssignVariableOpconv2d_7/biassave/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:55*
T0*
_output_shapes
:
j
save/AssignVariableOp_55AssignVariableOptraining/Adam/conv2d_7/bias/msave/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:56*
T0*
_output_shapes
:
j
save/AssignVariableOp_56AssignVariableOptraining/Adam/conv2d_7/bias/vsave/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:57*
T0*
_output_shapes
:
\
save/AssignVariableOp_57AssignVariableOpconv2d_7/kernelsave/Identity_57*
dtype0
R
save/Identity_58Identitysave/RestoreV2:58*
T0*
_output_shapes
:
l
save/AssignVariableOp_58AssignVariableOptraining/Adam/conv2d_7/kernel/msave/Identity_58*
dtype0
R
save/Identity_59Identitysave/RestoreV2:59*
T0*
_output_shapes
:
l
save/AssignVariableOp_59AssignVariableOptraining/Adam/conv2d_7/kernel/vsave/Identity_59*
dtype0
R
save/Identity_60Identitysave/RestoreV2:60*
T0*
_output_shapes
:
Z
save/AssignVariableOp_60AssignVariableOpconv2d_8/biassave/Identity_60*
dtype0
R
save/Identity_61Identitysave/RestoreV2:61*
T0*
_output_shapes
:
j
save/AssignVariableOp_61AssignVariableOptraining/Adam/conv2d_8/bias/msave/Identity_61*
dtype0
R
save/Identity_62Identitysave/RestoreV2:62*
T0*
_output_shapes
:
j
save/AssignVariableOp_62AssignVariableOptraining/Adam/conv2d_8/bias/vsave/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:63*
T0*
_output_shapes
:
\
save/AssignVariableOp_63AssignVariableOpconv2d_8/kernelsave/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:64*
T0*
_output_shapes
:
l
save/AssignVariableOp_64AssignVariableOptraining/Adam/conv2d_8/kernel/msave/Identity_64*
dtype0
R
save/Identity_65Identitysave/RestoreV2:65*
T0*
_output_shapes
:
l
save/AssignVariableOp_65AssignVariableOptraining/Adam/conv2d_8/kernel/vsave/Identity_65*
dtype0
R
save/Identity_66Identitysave/RestoreV2:66*
T0*
_output_shapes
:
Z
save/AssignVariableOp_66AssignVariableOpconv2d_9/biassave/Identity_66*
dtype0
R
save/Identity_67Identitysave/RestoreV2:67*
T0*
_output_shapes
:
j
save/AssignVariableOp_67AssignVariableOptraining/Adam/conv2d_9/bias/msave/Identity_67*
dtype0
R
save/Identity_68Identitysave/RestoreV2:68*
T0*
_output_shapes
:
j
save/AssignVariableOp_68AssignVariableOptraining/Adam/conv2d_9/bias/vsave/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:69*
T0*
_output_shapes
:
\
save/AssignVariableOp_69AssignVariableOpconv2d_9/kernelsave/Identity_69*
dtype0
R
save/Identity_70Identitysave/RestoreV2:70*
T0*
_output_shapes
:
l
save/AssignVariableOp_70AssignVariableOptraining/Adam/conv2d_9/kernel/msave/Identity_70*
dtype0
R
save/Identity_71Identitysave/RestoreV2:71*
T0*
_output_shapes
:
l
save/AssignVariableOp_71AssignVariableOptraining/Adam/conv2d_9/kernel/vsave/Identity_71*
dtype0
R
save/Identity_72Identitysave/RestoreV2:72*
T0*
_output_shapes
:
a
save/AssignVariableOp_72AssignVariableOptraining/Adam/beta_1save/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:73*
T0*
_output_shapes
:
a
save/AssignVariableOp_73AssignVariableOptraining/Adam/beta_2save/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:74*
T0*
_output_shapes
:
`
save/AssignVariableOp_74AssignVariableOptraining/Adam/decaysave/Identity_74*
dtype0
R
save/Identity_75Identitysave/RestoreV2:75*
T0	*
_output_shapes
:
Q
save/AssignVariableOp_75AssignVariableOpitersave/Identity_75*
dtype0	
R
save/Identity_76Identitysave/RestoreV2:76*
T0*
_output_shapes
:
h
save/AssignVariableOp_76AssignVariableOptraining/Adam/learning_ratesave/Identity_76*
dtype0
?
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_8^save/AssignVariableOp_9
,
init_1NoOp^count/Assign^total/Assign"?D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"?
local_variables??
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H"?
trainable_variables??
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
?
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
?
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
?
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"?a
	variables?a?a
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
?
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
?
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
?
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H
?
training/Adam/beta_1:0training/Adam/beta_1/Assign*training/Adam/beta_1/Read/ReadVariableOp:0(20training/Adam/beta_1/Initializer/initial_value:0H
?
training/Adam/beta_2:0training/Adam/beta_2/Assign*training/Adam/beta_2/Read/ReadVariableOp:0(20training/Adam/beta_2/Initializer/initial_value:0H
?
training/Adam/decay:0training/Adam/decay/Assign)training/Adam/decay/Read/ReadVariableOp:0(2/training/Adam/decay/Initializer/initial_value:0H
?
training/Adam/learning_rate:0"training/Adam/learning_rate/Assign1training/Adam/learning_rate/Read/ReadVariableOp:0(27training/Adam/learning_rate/Initializer/initial_value:0H
?
training/Adam/conv2d/kernel/m:0$training/Adam/conv2d/kernel/m/Assign3training/Adam/conv2d/kernel/m/Read/ReadVariableOp:0(21training/Adam/conv2d/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d/bias/m:0"training/Adam/conv2d/bias/m/Assign1training/Adam/conv2d/bias/m/Read/ReadVariableOp:0(2/training/Adam/conv2d/bias/m/Initializer/zeros:0
?
!training/Adam/conv2d_1/kernel/m:0&training/Adam/conv2d_1/kernel/m/Assign5training/Adam/conv2d_1/kernel/m/Read/ReadVariableOp:0(23training/Adam/conv2d_1/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d_1/bias/m:0$training/Adam/conv2d_1/bias/m/Assign3training/Adam/conv2d_1/bias/m/Read/ReadVariableOp:0(21training/Adam/conv2d_1/bias/m/Initializer/zeros:0
?
!training/Adam/conv2d_2/kernel/m:0&training/Adam/conv2d_2/kernel/m/Assign5training/Adam/conv2d_2/kernel/m/Read/ReadVariableOp:0(23training/Adam/conv2d_2/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d_2/bias/m:0$training/Adam/conv2d_2/bias/m/Assign3training/Adam/conv2d_2/bias/m/Read/ReadVariableOp:0(21training/Adam/conv2d_2/bias/m/Initializer/zeros:0
?
!training/Adam/conv2d_3/kernel/m:0&training/Adam/conv2d_3/kernel/m/Assign5training/Adam/conv2d_3/kernel/m/Read/ReadVariableOp:0(23training/Adam/conv2d_3/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d_3/bias/m:0$training/Adam/conv2d_3/bias/m/Assign3training/Adam/conv2d_3/bias/m/Read/ReadVariableOp:0(21training/Adam/conv2d_3/bias/m/Initializer/zeros:0
?
!training/Adam/conv2d_4/kernel/m:0&training/Adam/conv2d_4/kernel/m/Assign5training/Adam/conv2d_4/kernel/m/Read/ReadVariableOp:0(23training/Adam/conv2d_4/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d_4/bias/m:0$training/Adam/conv2d_4/bias/m/Assign3training/Adam/conv2d_4/bias/m/Read/ReadVariableOp:0(21training/Adam/conv2d_4/bias/m/Initializer/zeros:0
?
!training/Adam/conv2d_5/kernel/m:0&training/Adam/conv2d_5/kernel/m/Assign5training/Adam/conv2d_5/kernel/m/Read/ReadVariableOp:0(23training/Adam/conv2d_5/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d_5/bias/m:0$training/Adam/conv2d_5/bias/m/Assign3training/Adam/conv2d_5/bias/m/Read/ReadVariableOp:0(21training/Adam/conv2d_5/bias/m/Initializer/zeros:0
?
!training/Adam/conv2d_6/kernel/m:0&training/Adam/conv2d_6/kernel/m/Assign5training/Adam/conv2d_6/kernel/m/Read/ReadVariableOp:0(23training/Adam/conv2d_6/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d_6/bias/m:0$training/Adam/conv2d_6/bias/m/Assign3training/Adam/conv2d_6/bias/m/Read/ReadVariableOp:0(21training/Adam/conv2d_6/bias/m/Initializer/zeros:0
?
!training/Adam/conv2d_7/kernel/m:0&training/Adam/conv2d_7/kernel/m/Assign5training/Adam/conv2d_7/kernel/m/Read/ReadVariableOp:0(23training/Adam/conv2d_7/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d_7/bias/m:0$training/Adam/conv2d_7/bias/m/Assign3training/Adam/conv2d_7/bias/m/Read/ReadVariableOp:0(21training/Adam/conv2d_7/bias/m/Initializer/zeros:0
?
!training/Adam/conv2d_8/kernel/m:0&training/Adam/conv2d_8/kernel/m/Assign5training/Adam/conv2d_8/kernel/m/Read/ReadVariableOp:0(23training/Adam/conv2d_8/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d_8/bias/m:0$training/Adam/conv2d_8/bias/m/Assign3training/Adam/conv2d_8/bias/m/Read/ReadVariableOp:0(21training/Adam/conv2d_8/bias/m/Initializer/zeros:0
?
!training/Adam/conv2d_9/kernel/m:0&training/Adam/conv2d_9/kernel/m/Assign5training/Adam/conv2d_9/kernel/m/Read/ReadVariableOp:0(23training/Adam/conv2d_9/kernel/m/Initializer/zeros:0
?
training/Adam/conv2d_9/bias/m:0$training/Adam/conv2d_9/bias/m/Assign3training/Adam/conv2d_9/bias/m/Read/ReadVariableOp:0(21training/Adam/conv2d_9/bias/m/Initializer/zeros:0
?
training/Adam/dense/kernel/m:0#training/Adam/dense/kernel/m/Assign2training/Adam/dense/kernel/m/Read/ReadVariableOp:0(20training/Adam/dense/kernel/m/Initializer/zeros:0
?
training/Adam/dense/bias/m:0!training/Adam/dense/bias/m/Assign0training/Adam/dense/bias/m/Read/ReadVariableOp:0(2.training/Adam/dense/bias/m/Initializer/zeros:0
?
 training/Adam/dense_1/kernel/m:0%training/Adam/dense_1/kernel/m/Assign4training/Adam/dense_1/kernel/m/Read/ReadVariableOp:0(22training/Adam/dense_1/kernel/m/Initializer/zeros:0
?
training/Adam/dense_1/bias/m:0#training/Adam/dense_1/bias/m/Assign2training/Adam/dense_1/bias/m/Read/ReadVariableOp:0(20training/Adam/dense_1/bias/m/Initializer/zeros:0
?
training/Adam/conv2d/kernel/v:0$training/Adam/conv2d/kernel/v/Assign3training/Adam/conv2d/kernel/v/Read/ReadVariableOp:0(21training/Adam/conv2d/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d/bias/v:0"training/Adam/conv2d/bias/v/Assign1training/Adam/conv2d/bias/v/Read/ReadVariableOp:0(2/training/Adam/conv2d/bias/v/Initializer/zeros:0
?
!training/Adam/conv2d_1/kernel/v:0&training/Adam/conv2d_1/kernel/v/Assign5training/Adam/conv2d_1/kernel/v/Read/ReadVariableOp:0(23training/Adam/conv2d_1/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d_1/bias/v:0$training/Adam/conv2d_1/bias/v/Assign3training/Adam/conv2d_1/bias/v/Read/ReadVariableOp:0(21training/Adam/conv2d_1/bias/v/Initializer/zeros:0
?
!training/Adam/conv2d_2/kernel/v:0&training/Adam/conv2d_2/kernel/v/Assign5training/Adam/conv2d_2/kernel/v/Read/ReadVariableOp:0(23training/Adam/conv2d_2/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d_2/bias/v:0$training/Adam/conv2d_2/bias/v/Assign3training/Adam/conv2d_2/bias/v/Read/ReadVariableOp:0(21training/Adam/conv2d_2/bias/v/Initializer/zeros:0
?
!training/Adam/conv2d_3/kernel/v:0&training/Adam/conv2d_3/kernel/v/Assign5training/Adam/conv2d_3/kernel/v/Read/ReadVariableOp:0(23training/Adam/conv2d_3/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d_3/bias/v:0$training/Adam/conv2d_3/bias/v/Assign3training/Adam/conv2d_3/bias/v/Read/ReadVariableOp:0(21training/Adam/conv2d_3/bias/v/Initializer/zeros:0
?
!training/Adam/conv2d_4/kernel/v:0&training/Adam/conv2d_4/kernel/v/Assign5training/Adam/conv2d_4/kernel/v/Read/ReadVariableOp:0(23training/Adam/conv2d_4/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d_4/bias/v:0$training/Adam/conv2d_4/bias/v/Assign3training/Adam/conv2d_4/bias/v/Read/ReadVariableOp:0(21training/Adam/conv2d_4/bias/v/Initializer/zeros:0
?
!training/Adam/conv2d_5/kernel/v:0&training/Adam/conv2d_5/kernel/v/Assign5training/Adam/conv2d_5/kernel/v/Read/ReadVariableOp:0(23training/Adam/conv2d_5/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d_5/bias/v:0$training/Adam/conv2d_5/bias/v/Assign3training/Adam/conv2d_5/bias/v/Read/ReadVariableOp:0(21training/Adam/conv2d_5/bias/v/Initializer/zeros:0
?
!training/Adam/conv2d_6/kernel/v:0&training/Adam/conv2d_6/kernel/v/Assign5training/Adam/conv2d_6/kernel/v/Read/ReadVariableOp:0(23training/Adam/conv2d_6/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d_6/bias/v:0$training/Adam/conv2d_6/bias/v/Assign3training/Adam/conv2d_6/bias/v/Read/ReadVariableOp:0(21training/Adam/conv2d_6/bias/v/Initializer/zeros:0
?
!training/Adam/conv2d_7/kernel/v:0&training/Adam/conv2d_7/kernel/v/Assign5training/Adam/conv2d_7/kernel/v/Read/ReadVariableOp:0(23training/Adam/conv2d_7/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d_7/bias/v:0$training/Adam/conv2d_7/bias/v/Assign3training/Adam/conv2d_7/bias/v/Read/ReadVariableOp:0(21training/Adam/conv2d_7/bias/v/Initializer/zeros:0
?
!training/Adam/conv2d_8/kernel/v:0&training/Adam/conv2d_8/kernel/v/Assign5training/Adam/conv2d_8/kernel/v/Read/ReadVariableOp:0(23training/Adam/conv2d_8/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d_8/bias/v:0$training/Adam/conv2d_8/bias/v/Assign3training/Adam/conv2d_8/bias/v/Read/ReadVariableOp:0(21training/Adam/conv2d_8/bias/v/Initializer/zeros:0
?
!training/Adam/conv2d_9/kernel/v:0&training/Adam/conv2d_9/kernel/v/Assign5training/Adam/conv2d_9/kernel/v/Read/ReadVariableOp:0(23training/Adam/conv2d_9/kernel/v/Initializer/zeros:0
?
training/Adam/conv2d_9/bias/v:0$training/Adam/conv2d_9/bias/v/Assign3training/Adam/conv2d_9/bias/v/Read/ReadVariableOp:0(21training/Adam/conv2d_9/bias/v/Initializer/zeros:0
?
training/Adam/dense/kernel/v:0#training/Adam/dense/kernel/v/Assign2training/Adam/dense/kernel/v/Read/ReadVariableOp:0(20training/Adam/dense/kernel/v/Initializer/zeros:0
?
training/Adam/dense/bias/v:0!training/Adam/dense/bias/v/Assign0training/Adam/dense/bias/v/Read/ReadVariableOp:0(2.training/Adam/dense/bias/v/Initializer/zeros:0
?
 training/Adam/dense_1/kernel/v:0%training/Adam/dense_1/kernel/v/Assign4training/Adam/dense_1/kernel/v/Read/ReadVariableOp:0(22training/Adam/dense_1/kernel/v/Initializer/zeros:0
?
training/Adam/dense_1/bias/v:0#training/Adam/dense_1/bias/v/Assign2training/Adam/dense_1/bias/v/Read/ReadVariableOp:0(20training/Adam/dense_1/bias/v/Initializer/zeros:0*@
__saved_model_init_op'%
__saved_model_init_op
init_1*Q
__saved_model_train_op75
__saved_model_train_op
training_1/group_deps*?
train?
?
conv2d_input/
conv2d_input:0???????????
B
dense_1_target0
dense_1_target:0??????????????????
loss

loss/mul:0 9
metrics/accuracy/update_op
metric_op_wrapper:0 -
metrics/accuracy/value
Identity_78:0 ?
predictions/dense_1(
dense_1/Softmax:0?????????tensorflow/supervised/training??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
;
Sub
x"T
y"T
z"T"
Ttype:
2	
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
?"eval*2.4.12v2.4.0-49-g85c8b2a817f8ǧ
?
conv2d_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *2???
?
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *2??=
?
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
?
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
?
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
?
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
?
conv2d/kernelVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
n
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
dtype0
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
?
conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d/biasVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 
_
conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
dtype0
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
?
conv2d/Conv2DConv2Dconv2d_inputconv2d/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
?
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
_
conv2d/ReluReluconv2d/BiasAdd*
T0*1
_output_shapes
:???????????
?
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *?)??
?
.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *?)?=
?
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:*
dtype0
?
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
?
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
?
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
?
conv2d_1/kernelVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
t
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
?
conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d_1/biasVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
e
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
?
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides

i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
c
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*1
_output_shapes
:???????????
?
max_pooling2d/MaxPoolMaxPoolconv2d_1/Relu*/
_output_shapes
:?????????AA*
ksize
*
paddingVALID*
strides

?
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
.conv2d_2/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *??̽
?
.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *???=
?
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
dtype0
?
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
?
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
?
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
?
conv2d_2/kernelVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
t
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
?
conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d_2/biasVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
e
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
?
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????AA*
paddingSAME*
strides

i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????AA
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:?????????AA
?
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
.conv2d_3/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?\??
?
.conv2d_3/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?\?=
?
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
dtype0
?
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
?
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
?
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
?
conv2d_3/kernelVarHandleOp*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
t
conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
?
conv2d_3/bias/Initializer/zerosConst* 
_class
loc:@conv2d_3/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d_3/biasVarHandleOp* 
_class
loc:@conv2d_3/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
e
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros*
dtype0
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
v
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
?
conv2d_3/Conv2DConv2Dconv2d_2/Reluconv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????AA*
paddingSAME*
strides

i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????AA
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:?????????AA
?
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

?
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:*
dtype0*%
valueB"             
?
.conv2d_4/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[??
?
.conv2d_4/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[?=
?
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: *
dtype0
?
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
?
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
?
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
?
conv2d_4/kernelVarHandleOp*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_4/kernel
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
t
conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
?
conv2d_4/bias/Initializer/zerosConst* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
valueB *    
?
conv2d_4/biasVarHandleOp* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
e
conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros*
dtype0
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
v
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
?
conv2d_4/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_4/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

i
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:????????? 
a
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*/
_output_shapes
:????????? 
?
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
:*
dtype0*%
valueB"              
?
.conv2d_5/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *?ѽ
?
.conv2d_5/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *??=
?
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
?
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  
?
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  
?
conv2d_5/kernelVarHandleOp*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_5/kernel
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
t
conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
conv2d_5/bias/Initializer/zerosConst* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
valueB *    
?
conv2d_5/biasVarHandleOp* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_5/bias
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
e
conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros*
dtype0
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0
v
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
conv2d_5/Conv2DConv2Dconv2d_4/Reluconv2d_5/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

i
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0
?
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:????????? 
a
conv2d_5/ReluReluconv2d_5/BiasAdd*
T0*/
_output_shapes
:????????? 
?
max_pooling2d_2/MaxPoolMaxPoolconv2d_5/Relu*/
_output_shapes
:?????????

 *
ksize
*
paddingVALID*
strides

?
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:*
dtype0*%
valueB"          @   
?
.conv2d_6/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *????
?
.conv2d_6/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *???=
?
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
?
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @
?
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @
?
conv2d_6/kernelVarHandleOp*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_6/kernel
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
t
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_6/bias/Initializer/zerosConst* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
conv2d_6/biasVarHandleOp* 
_class
loc:@conv2d_6/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_6/bias
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
e
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros*
dtype0
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_6/Conv2DConv2Dmax_pooling2d_2/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????

@*
paddingSAME*
strides

i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0
?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????

@
a
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*/
_output_shapes
:?????????

@
?
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   @   
?
.conv2d_7/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *:͓?
?
.conv2d_7/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *:͓=
?
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
?
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@
?
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@
?
conv2d_7/kernelVarHandleOp*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_7/kernel
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
t
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
conv2d_7/bias/Initializer/zerosConst* 
_class
loc:@conv2d_7/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
conv2d_7/biasVarHandleOp* 
_class
loc:@conv2d_7/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
e
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros*
dtype0
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
conv2d_7/Conv2DConv2Dconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????

@*
paddingSAME*
strides

i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????

@
a
conv2d_7/ReluReluconv2d_7/BiasAdd*
T0*/
_output_shapes
:?????????

@
?
max_pooling2d_3/MaxPoolMaxPoolconv2d_7/Relu*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

?
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   ?   
?
.conv2d_8/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[q?
?
.conv2d_8/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[q=
?
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
?
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?
?
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?
?
conv2d_8/kernelVarHandleOp*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_8/kernel
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
t
conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*
dtype0
|
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_8/bias/Initializer/zerosConst* 
_class
loc:@conv2d_8/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
conv2d_8/biasVarHandleOp* 
_class
loc:@conv2d_8/bias*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_8/bias
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
e
conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros*
dtype0
l
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes	
:?*
dtype0
w
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_8/Conv2DConv2Dmax_pooling2d_3/MaxPoolconv2d_8/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides

j
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes	
:?*
dtype0
?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:??????????
b
conv2d_8/ReluReluconv2d_8/BiasAdd*
T0*0
_output_shapes
:??????????
?
0conv2d_9/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
.conv2d_9/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
.conv2d_9/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
8conv2d_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_9/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
.conv2d_9/kernel/Initializer/random_uniform/subSub.conv2d_9/kernel/Initializer/random_uniform/max.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: 
?
.conv2d_9/kernel/Initializer/random_uniform/mulMul8conv2d_9/kernel/Initializer/random_uniform/RandomUniform.conv2d_9/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??
?
*conv2d_9/kernel/Initializer/random_uniformAdd.conv2d_9/kernel/Initializer/random_uniform/mul.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??
?
conv2d_9/kernelVarHandleOp*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_9/kernel
o
0conv2d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
t
conv2d_9/kernel/AssignAssignVariableOpconv2d_9/kernel*conv2d_9/kernel/Initializer/random_uniform*
dtype0
}
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_9/bias/Initializer/zerosConst* 
_class
loc:@conv2d_9/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
conv2d_9/biasVarHandleOp* 
_class
loc:@conv2d_9/bias*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_9/bias
k
.conv2d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
e
conv2d_9/bias/AssignAssignVariableOpconv2d_9/biasconv2d_9/bias/Initializer/zeros*
dtype0
l
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes	
:?*
dtype0
x
conv2d_9/Conv2D/ReadVariableOpReadVariableOpconv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_9/Conv2DConv2Dconv2d_8/Reluconv2d_9/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides

j
conv2d_9/BiasAdd/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes	
:?*
dtype0
?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2Dconv2d_9/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:??????????
b
conv2d_9/ReluReluconv2d_9/BiasAdd*
T0*0
_output_shapes
:??????????
?
max_pooling2d_4/MaxPoolMaxPoolconv2d_9/Relu*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides

^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   
u
flatten/ReshapeReshapemax_pooling2d_4/MaxPoolflatten/Const*
T0*(
_output_shapes
:??????????
?
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"   ?   
?
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *?Kƽ
?
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *?K?=
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??*
dtype0
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
?
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?

dense/biasVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
j
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
w
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
w
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:??????????
[
dropout/IdentityIdentity
dense/Relu*
T0*(
_output_shapes
:??????????
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"?      
?
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *??[?
?
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *??[>
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?*
dtype0
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?
?
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?
?
dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
?
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
{
dense_1/MatMulMatMuldropout/Identitydense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????
]
dense_1/SoftmaxSoftmaxdense_1/BiasAdd*
T0*'
_output_shapes
:?????????
?
dense_1_targetPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
v
total/Initializer/zerosConst*
_class

loc:@total*
_output_shapes
: *
dtype0*
valueB
 *    
x
totalVarHandleOp*
_class

loc:@total*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
v
count/Initializer/zerosConst*
_class

loc:@count*
_output_shapes
: *
dtype0*
valueB
 *    
x
countVarHandleOp*
_class

loc:@count*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
l
!metrics/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
metrics/accuracy/ArgMaxArgMaxdense_1_target!metrics/accuracy/ArgMax/dimension*
T0*#
_output_shapes
:?????????
n
#metrics/accuracy/ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
metrics/accuracy/ArgMax_1ArgMaxdense_1/Softmax#metrics/accuracy/ArgMax_1/dimension*
T0*#
_output_shapes
:?????????
?
metrics/accuracy/EqualEqualmetrics/accuracy/ArgMaxmetrics/accuracy/ArgMax_1*
T0	*#
_output_shapes
:?????????
r
metrics/accuracy/CastCastmetrics/accuracy/Equal*

DstT0*

SrcT0
*#
_output_shapes
:?????????
`
metrics/accuracy/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
k
metrics/accuracy/SumSummetrics/accuracy/Castmetrics/accuracy/Const*
T0*
_output_shapes
: 
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
?
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp^metrics/accuracy/Sum*
_output_shapes
: *
dtype0
U
metrics/accuracy/SizeSizemetrics/accuracy/Cast*
T0*
_output_shapes
: 
f
metrics/accuracy/Cast_1Castmetrics/accuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
?
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_1%^metrics/accuracy/AssignAddVariableOp*
dtype0
?
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount%^metrics/accuracy/AssignAddVariableOp'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
*metrics/accuracy/div_no_nan/ReadVariableOpReadVariableOptotal'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
,metrics/accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
metrics/accuracy/div_no_nanDivNoNan*metrics/accuracy/div_no_nan/ReadVariableOp,metrics/accuracy/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
c
metrics/accuracy/IdentityIdentitymetrics/accuracy/div_no_nan*
T0*
_output_shapes
: 
\
loss/dense_1_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
z
8loss/dense_1_loss/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :
x
9loss/dense_1_loss/softmax_cross_entropy_with_logits/ShapeShapedense_1/BiasAdd*
T0*
_output_shapes
:
|
:loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :
z
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Shape_1Shapedense_1/BiasAdd*
T0*
_output_shapes
:
{
9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :
?
7loss/dense_1_loss/softmax_cross_entropy_with_logits/SubSub:loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank_19loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 
?
?loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice/beginPack7loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub*
N*
T0*
_output_shapes
:
?
>loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
9loss/dense_1_loss/softmax_cross_entropy_with_logits/SliceSlice;loss/dense_1_loss/softmax_cross_entropy_with_logits/Shape_1?loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice/begin>loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0*
_output_shapes
:
?
Closs/dense_1_loss/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
?????????
?
?loss/dense_1_loss/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
:loss/dense_1_loss/softmax_cross_entropy_with_logits/concatConcatV2Closs/dense_1_loss/softmax_cross_entropy_with_logits/concat/values_09loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice?loss/dense_1_loss/softmax_cross_entropy_with_logits/concat/axis*
N*
T0*
_output_shapes
:
?
;loss/dense_1_loss/softmax_cross_entropy_with_logits/ReshapeReshapedense_1/BiasAdd:loss/dense_1_loss/softmax_cross_entropy_with_logits/concat*
T0*0
_output_shapes
:??????????????????
|
:loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :
y
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Shape_2Shapedense_1_target*
T0*
_output_shapes
:
}
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :
?
9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_1Sub:loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank_2;loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
?
Aloss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1/beginPack9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_1*
N*
T0*
_output_shapes
:
?
@loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1Slice;loss/dense_1_loss/softmax_cross_entropy_with_logits/Shape_2Aloss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1/begin@loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
Eloss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Aloss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
<loss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1ConcatV2Eloss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1/values_0;loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_1Aloss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1/axis*
N*
T0*
_output_shapes
:
?
=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_1Reshapedense_1_target<loss/dense_1_loss/softmax_cross_entropy_with_logits/concat_1*
T0*0
_output_shapes
:??????????????????
?
3loss/dense_1_loss/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits;loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:?????????:??????????????????
}
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :
?
9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_2Sub8loss/dense_1_loss/softmax_cross_entropy_with_logits/Rank;loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 
?
Aloss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
@loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2/sizePack9loss/dense_1_loss/softmax_cross_entropy_with_logits/Sub_2*
N*
T0*
_output_shapes
:
?
;loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2Slice9loss/dense_1_loss/softmax_cross_entropy_with_logits/ShapeAloss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2/begin@loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2Reshape3loss/dense_1_loss/softmax_cross_entropy_with_logits;loss/dense_1_loss/softmax_cross_entropy_with_logits/Slice_2*
T0*#
_output_shapes
:?????????
j
%loss/dense_1_loss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
#loss/dense_1_loss/weighted_loss/MulMul=loss/dense_1_loss/softmax_cross_entropy_with_logits/Reshape_2%loss/dense_1_loss/weighted_loss/Const*
T0*#
_output_shapes
:?????????
c
loss/dense_1_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
}
loss/dense_1_loss/SumSum#loss/dense_1_loss/weighted_loss/Mulloss/dense_1_loss/Const_1*
T0*
_output_shapes
: 
l
loss/dense_1_loss/num_elementsSize#loss/dense_1_loss/weighted_loss/Mul*
T0*
_output_shapes
: 
{
#loss/dense_1_loss/num_elements/CastCastloss/dense_1_loss/num_elements*

DstT0*

SrcT0*
_output_shapes
: 
X
loss/dense_1_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 
_
loss/dense_1_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
_
loss/dense_1_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
loss/dense_1_loss/rangeRangeloss/dense_1_loss/range/startloss/dense_1_loss/Rankloss/dense_1_loss/range/delta*
_output_shapes
: 
o
loss/dense_1_loss/Sum_1Sumloss/dense_1_loss/Sumloss/dense_1_loss/range*
T0*
_output_shapes
: 
?
loss/dense_1_loss/valueDivNoNanloss/dense_1_loss/Sum_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
U
loss/mulMul
loss/mul/xloss/dense_1_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
value	B	 R 
u
iterVarHandleOp*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
(
evaluation/group_depsNoOp	^loss/mul
Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bmodel
?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
?
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	
Q
IdentityIdentity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOpAssignVariableOpconv2d/biasIdentity"/device:CPU:0*
dtype0
U

Identity_1IdentityRestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_1AssignVariableOpconv2d/kernel
Identity_1"/device:CPU:0*
dtype0
U

Identity_2IdentityRestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_2AssignVariableOpconv2d_1/bias
Identity_2"/device:CPU:0*
dtype0
U

Identity_3IdentityRestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_3AssignVariableOpconv2d_1/kernel
Identity_3"/device:CPU:0*
dtype0
U

Identity_4IdentityRestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
Z
AssignVariableOp_4AssignVariableOp
dense/bias
Identity_4"/device:CPU:0*
dtype0
U

Identity_5IdentityRestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_5AssignVariableOpdense/kernel
Identity_5"/device:CPU:0*
dtype0
U

Identity_6IdentityRestoreV2:6"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_6AssignVariableOpdense_1/bias
Identity_6"/device:CPU:0*
dtype0
U

Identity_7IdentityRestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_7AssignVariableOpdense_1/kernel
Identity_7"/device:CPU:0*
dtype0
U

Identity_8IdentityRestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_8AssignVariableOpconv2d_2/bias
Identity_8"/device:CPU:0*
dtype0
U

Identity_9IdentityRestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_9AssignVariableOpconv2d_2/kernel
Identity_9"/device:CPU:0*
dtype0
W
Identity_10IdentityRestoreV2:10"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_10AssignVariableOpconv2d_3/biasIdentity_10"/device:CPU:0*
dtype0
W
Identity_11IdentityRestoreV2:11"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_11AssignVariableOpconv2d_3/kernelIdentity_11"/device:CPU:0*
dtype0
W
Identity_12IdentityRestoreV2:12"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_12AssignVariableOpconv2d_4/biasIdentity_12"/device:CPU:0*
dtype0
W
Identity_13IdentityRestoreV2:13"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_13AssignVariableOpconv2d_4/kernelIdentity_13"/device:CPU:0*
dtype0
W
Identity_14IdentityRestoreV2:14"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_14AssignVariableOpconv2d_5/biasIdentity_14"/device:CPU:0*
dtype0
W
Identity_15IdentityRestoreV2:15"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_15AssignVariableOpconv2d_5/kernelIdentity_15"/device:CPU:0*
dtype0
W
Identity_16IdentityRestoreV2:16"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_16AssignVariableOpconv2d_6/biasIdentity_16"/device:CPU:0*
dtype0
W
Identity_17IdentityRestoreV2:17"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_17AssignVariableOpconv2d_6/kernelIdentity_17"/device:CPU:0*
dtype0
W
Identity_18IdentityRestoreV2:18"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_18AssignVariableOpconv2d_7/biasIdentity_18"/device:CPU:0*
dtype0
W
Identity_19IdentityRestoreV2:19"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_19AssignVariableOpconv2d_7/kernelIdentity_19"/device:CPU:0*
dtype0
W
Identity_20IdentityRestoreV2:20"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_20AssignVariableOpconv2d_8/biasIdentity_20"/device:CPU:0*
dtype0
W
Identity_21IdentityRestoreV2:21"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_21AssignVariableOpconv2d_8/kernelIdentity_21"/device:CPU:0*
dtype0
W
Identity_22IdentityRestoreV2:22"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_22AssignVariableOpconv2d_9/biasIdentity_22"/device:CPU:0*
dtype0
W
Identity_23IdentityRestoreV2:23"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_23AssignVariableOpconv2d_9/kernelIdentity_23"/device:CPU:0*
dtype0
W
Identity_24IdentityRestoreV2:24"/device:CPU:0*
T0	*
_output_shapes
:
V
AssignVariableOp_24AssignVariableOpiterIdentity_24"/device:CPU:0*
dtype0	
O
VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
S
VarIsInitializedOp_2VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
I
VarIsInitializedOp_3VarIsInitializedOpcount*
_output_shapes
: 
S
VarIsInitializedOp_4VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
H
VarIsInitializedOp_5VarIsInitializedOpiter*
_output_shapes
: 
O
VarIsInitializedOp_6VarIsInitializedOpconv2d/bias*
_output_shapes
: 
S
VarIsInitializedOp_7VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
P
VarIsInitializedOp_8VarIsInitializedOpdense/kernel*
_output_shapes
: 
N
VarIsInitializedOp_9VarIsInitializedOp
dense/bias*
_output_shapes
: 
R
VarIsInitializedOp_10VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
T
VarIsInitializedOp_11VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
T
VarIsInitializedOp_12VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
R
VarIsInitializedOp_13VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
R
VarIsInitializedOp_14VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
T
VarIsInitializedOp_15VarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
T
VarIsInitializedOp_16VarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
R
VarIsInitializedOp_17VarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
J
VarIsInitializedOp_18VarIsInitializedOptotal*
_output_shapes
: 
T
VarIsInitializedOp_19VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
R
VarIsInitializedOp_20VarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
Q
VarIsInitializedOp_21VarIsInitializedOpdense_1/bias*
_output_shapes
: 
R
VarIsInitializedOp_22VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
T
VarIsInitializedOp_23VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
R
VarIsInitializedOp_24VarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
R
VarIsInitializedOp_25VarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
S
VarIsInitializedOp_26VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
?
initNoOp^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^conv2d_8/bias/Assign^conv2d_8/kernel/Assign^conv2d_9/bias/Assign^conv2d_9/kernel/Assign^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^iter/Assign^total/Assign
W
div_no_nan/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
_output_shapes
: *
dtype0
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_25Identity
div_no_nan*
T0*
_output_shapes
: 
}
metric_op_wrapperConst'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0*
valueB 
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
?
save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*?

value?
B?
B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOpiter/Read/ReadVariableOp*'
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOpconv2d/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
X
save/AssignVariableOp_1AssignVariableOpconv2d/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpconv2d_1/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpconv2d_1/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
U
save/AssignVariableOp_4AssignVariableOp
dense/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
W
save/AssignVariableOp_5AssignVariableOpdense/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
W
save/AssignVariableOp_6AssignVariableOpdense_1/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
Y
save/AssignVariableOp_7AssignVariableOpdense_1/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
X
save/AssignVariableOp_8AssignVariableOpconv2d_2/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Z
save/AssignVariableOp_9AssignVariableOpconv2d_2/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
Z
save/AssignVariableOp_10AssignVariableOpconv2d_3/biassave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
\
save/AssignVariableOp_11AssignVariableOpconv2d_3/kernelsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
Z
save/AssignVariableOp_12AssignVariableOpconv2d_4/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
\
save/AssignVariableOp_13AssignVariableOpconv2d_4/kernelsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
Z
save/AssignVariableOp_14AssignVariableOpconv2d_5/biassave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0*
_output_shapes
:
\
save/AssignVariableOp_15AssignVariableOpconv2d_5/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
Z
save/AssignVariableOp_16AssignVariableOpconv2d_6/biassave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
\
save/AssignVariableOp_17AssignVariableOpconv2d_6/kernelsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
Z
save/AssignVariableOp_18AssignVariableOpconv2d_7/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
\
save/AssignVariableOp_19AssignVariableOpconv2d_7/kernelsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:
Z
save/AssignVariableOp_20AssignVariableOpconv2d_8/biassave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0*
_output_shapes
:
\
save/AssignVariableOp_21AssignVariableOpconv2d_8/kernelsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:
Z
save/AssignVariableOp_22AssignVariableOpconv2d_9/biassave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
T0*
_output_shapes
:
\
save/AssignVariableOp_23AssignVariableOpconv2d_9/kernelsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:24*
T0	*
_output_shapes
:
Q
save/AssignVariableOp_24AssignVariableOpitersave/Identity_24*
dtype0	
?
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
,
init_1NoOp^count/Assign^total/Assign"?D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"?
local_variables??
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H"?
trainable_variables??
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
?
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
?
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
?
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"?
	variables??
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
?
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
?
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
?
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H*@
__saved_model_init_op'%
__saved_model_init_op
init_1*?
eval?
?
conv2d_input/
conv2d_input:0???????????
B
dense_1_target0
dense_1_target:0??????????????????
loss

loss/mul:0 9
metrics/accuracy/update_op
metric_op_wrapper:0 -
metrics/accuracy/value
Identity_25:0 ?
predictions/dense_1(
dense_1/Softmax:0?????????tensorflow/supervised/eval??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
;
Sub
x"T
y"T
z"T"
Ttype:
2	
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
?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
conv2d_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *2???
?
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *2??=
?
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
?
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
?
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
?
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
?
conv2d/kernelVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
n
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
dtype0
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
?
conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d/biasVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 
_
conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
dtype0
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
?
conv2d/Conv2DConv2Dconv2d_inputconv2d/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
?
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
_
conv2d/ReluReluconv2d/BiasAdd*
T0*1
_output_shapes
:???????????
?
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *?)??
?
.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *?)?=
?
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:*
dtype0
?
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
?
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
?
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
?
conv2d_1/kernelVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
t
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
?
conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d_1/biasVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
e
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
?
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides

i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:???????????
c
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*1
_output_shapes
:???????????
?
max_pooling2d/MaxPoolMaxPoolconv2d_1/Relu*/
_output_shapes
:?????????AA*
ksize
*
paddingVALID*
strides

?
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
.conv2d_2/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *??̽
?
.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *???=
?
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
dtype0
?
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
?
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
?
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
?
conv2d_2/kernelVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
t
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
?
conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d_2/biasVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
e
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
?
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????AA*
paddingSAME*
strides

i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????AA
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:?????????AA
?
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:*
dtype0*%
valueB"            
?
.conv2d_3/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?\??
?
.conv2d_3/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?\?=
?
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
dtype0
?
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
?
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
?
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
?
conv2d_3/kernelVarHandleOp*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
t
conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
?
conv2d_3/bias/Initializer/zerosConst* 
_class
loc:@conv2d_3/bias*
_output_shapes
:*
dtype0*
valueB*    
?
conv2d_3/biasVarHandleOp* 
_class
loc:@conv2d_3/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
e
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros*
dtype0
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
v
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
?
conv2d_3/Conv2DConv2Dconv2d_2/Reluconv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????AA*
paddingSAME*
strides

i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????AA
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:?????????AA
?
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

?
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:*
dtype0*%
valueB"             
?
.conv2d_4/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[??
?
.conv2d_4/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[?=
?
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: *
dtype0
?
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
?
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
?
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
: 
?
conv2d_4/kernelVarHandleOp*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_4/kernel
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
t
conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
?
conv2d_4/bias/Initializer/zerosConst* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
valueB *    
?
conv2d_4/biasVarHandleOp* 
_class
loc:@conv2d_4/bias*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
e
conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros*
dtype0
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
v
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
?
conv2d_4/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_4/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

i
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:????????? 
a
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*/
_output_shapes
:????????? 
?
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
:*
dtype0*%
valueB"              
?
.conv2d_5/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *?ѽ
?
.conv2d_5/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
valueB
 *??=
?
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
?
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  
?
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:  
?
conv2d_5/kernelVarHandleOp*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_5/kernel
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
t
conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
conv2d_5/bias/Initializer/zerosConst* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
valueB *    
?
conv2d_5/biasVarHandleOp* 
_class
loc:@conv2d_5/bias*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_5/bias
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
e
conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros*
dtype0
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0
v
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:  *
dtype0
?
conv2d_5/Conv2DConv2Dconv2d_4/Reluconv2d_5/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides

i
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0
?
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:????????? 
a
conv2d_5/ReluReluconv2d_5/BiasAdd*
T0*/
_output_shapes
:????????? 
?
max_pooling2d_2/MaxPoolMaxPoolconv2d_5/Relu*/
_output_shapes
:?????????

 *
ksize
*
paddingVALID*
strides

?
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:*
dtype0*%
valueB"          @   
?
.conv2d_6/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *????
?
.conv2d_6/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
valueB
 *???=
?
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
?
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @
?
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: @
?
conv2d_6/kernelVarHandleOp*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_6/kernel
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
t
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_6/bias/Initializer/zerosConst* 
_class
loc:@conv2d_6/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
conv2d_6/biasVarHandleOp* 
_class
loc:@conv2d_6/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_6/bias
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
e
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros*
dtype0
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_6/Conv2DConv2Dmax_pooling2d_2/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????

@*
paddingSAME*
strides

i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0
?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????

@
a
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*/
_output_shapes
:?????????

@
?
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   @   
?
.conv2d_7/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *:͓?
?
.conv2d_7/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
valueB
 *:͓=
?
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
?
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@
?
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:@@
?
conv2d_7/kernelVarHandleOp*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_7/kernel
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
t
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
conv2d_7/bias/Initializer/zerosConst* 
_class
loc:@conv2d_7/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
conv2d_7/biasVarHandleOp* 
_class
loc:@conv2d_7/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
e
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros*
dtype0
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@@*
dtype0
?
conv2d_7/Conv2DConv2Dconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????

@*
paddingSAME*
strides

i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:?????????

@
a
conv2d_7/ReluReluconv2d_7/BiasAdd*
T0*/
_output_shapes
:?????????

@
?
max_pooling2d_3/MaxPoolMaxPoolconv2d_7/Relu*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

?
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
:*
dtype0*%
valueB"      @   ?   
?
.conv2d_8/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[q?
?
.conv2d_8/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[q=
?
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
?
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?
?
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:@?
?
conv2d_8/kernelVarHandleOp*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_8/kernel
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
t
conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*
dtype0
|
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_8/bias/Initializer/zerosConst* 
_class
loc:@conv2d_8/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
conv2d_8/biasVarHandleOp* 
_class
loc:@conv2d_8/bias*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_8/bias
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
e
conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros*
dtype0
l
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes	
:?*
dtype0
w
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_8/Conv2DConv2Dmax_pooling2d_3/MaxPoolconv2d_8/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides

j
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes	
:?*
dtype0
?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:??????????
b
conv2d_8/ReluReluconv2d_8/BiasAdd*
T0*0
_output_shapes
:??????????
?
0conv2d_9/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
.conv2d_9/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
.conv2d_9/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
8conv2d_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_9/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
.conv2d_9/kernel/Initializer/random_uniform/subSub.conv2d_9/kernel/Initializer/random_uniform/max.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: 
?
.conv2d_9/kernel/Initializer/random_uniform/mulMul8conv2d_9/kernel/Initializer/random_uniform/RandomUniform.conv2d_9/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??
?
*conv2d_9/kernel/Initializer/random_uniformAdd.conv2d_9/kernel/Initializer/random_uniform/mul.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*(
_output_shapes
:??
?
conv2d_9/kernelVarHandleOp*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_9/kernel
o
0conv2d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
t
conv2d_9/kernel/AssignAssignVariableOpconv2d_9/kernel*conv2d_9/kernel/Initializer/random_uniform*
dtype0
}
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_9/bias/Initializer/zerosConst* 
_class
loc:@conv2d_9/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
conv2d_9/biasVarHandleOp* 
_class
loc:@conv2d_9/bias*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_9/bias
k
.conv2d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
e
conv2d_9/bias/AssignAssignVariableOpconv2d_9/biasconv2d_9/bias/Initializer/zeros*
dtype0
l
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes	
:?*
dtype0
x
conv2d_9/Conv2D/ReadVariableOpReadVariableOpconv2d_9/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_9/Conv2DConv2Dconv2d_8/Reluconv2d_9/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides

j
conv2d_9/BiasAdd/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes	
:?*
dtype0
?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2Dconv2d_9/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:??????????
b
conv2d_9/ReluReluconv2d_9/BiasAdd*
T0*0
_output_shapes
:??????????
?
max_pooling2d_4/MaxPoolMaxPoolconv2d_9/Relu*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides

^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   
u
flatten/ReshapeReshapemax_pooling2d_4/MaxPoolflatten/Const*
T0*(
_output_shapes
:??????????
?
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"   ?   
?
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *?Kƽ
?
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *?K?=
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??*
dtype0
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
?
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?

dense/biasVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
j
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
w
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
w
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:??????????
[
dropout/IdentityIdentity
dense/Relu*
T0*(
_output_shapes
:??????????
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"?      
?
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *??[?
?
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *??[>
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?*
dtype0
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?
?
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?
?
dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
?
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
?
dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
{
dense_1/MatMulMatMuldropout/Identitydense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????
]
dense_1/SoftmaxSoftmaxdense_1/BiasAdd*
T0*'
_output_shapes
:?????????
,
predict/group_depsNoOp^dense_1/Softmax
Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bmodel
?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 
?
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
2
Q
IdentityIdentity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOpAssignVariableOpconv2d/biasIdentity"/device:CPU:0*
dtype0
U

Identity_1IdentityRestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_1AssignVariableOpconv2d/kernel
Identity_1"/device:CPU:0*
dtype0
U

Identity_2IdentityRestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_2AssignVariableOpconv2d_1/bias
Identity_2"/device:CPU:0*
dtype0
U

Identity_3IdentityRestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_3AssignVariableOpconv2d_1/kernel
Identity_3"/device:CPU:0*
dtype0
U

Identity_4IdentityRestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
Z
AssignVariableOp_4AssignVariableOp
dense/bias
Identity_4"/device:CPU:0*
dtype0
U

Identity_5IdentityRestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_5AssignVariableOpdense/kernel
Identity_5"/device:CPU:0*
dtype0
U

Identity_6IdentityRestoreV2:6"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_6AssignVariableOpdense_1/bias
Identity_6"/device:CPU:0*
dtype0
U

Identity_7IdentityRestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_7AssignVariableOpdense_1/kernel
Identity_7"/device:CPU:0*
dtype0
U

Identity_8IdentityRestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_8AssignVariableOpconv2d_2/bias
Identity_8"/device:CPU:0*
dtype0
U

Identity_9IdentityRestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_9AssignVariableOpconv2d_2/kernel
Identity_9"/device:CPU:0*
dtype0
W
Identity_10IdentityRestoreV2:10"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_10AssignVariableOpconv2d_3/biasIdentity_10"/device:CPU:0*
dtype0
W
Identity_11IdentityRestoreV2:11"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_11AssignVariableOpconv2d_3/kernelIdentity_11"/device:CPU:0*
dtype0
W
Identity_12IdentityRestoreV2:12"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_12AssignVariableOpconv2d_4/biasIdentity_12"/device:CPU:0*
dtype0
W
Identity_13IdentityRestoreV2:13"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_13AssignVariableOpconv2d_4/kernelIdentity_13"/device:CPU:0*
dtype0
W
Identity_14IdentityRestoreV2:14"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_14AssignVariableOpconv2d_5/biasIdentity_14"/device:CPU:0*
dtype0
W
Identity_15IdentityRestoreV2:15"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_15AssignVariableOpconv2d_5/kernelIdentity_15"/device:CPU:0*
dtype0
W
Identity_16IdentityRestoreV2:16"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_16AssignVariableOpconv2d_6/biasIdentity_16"/device:CPU:0*
dtype0
W
Identity_17IdentityRestoreV2:17"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_17AssignVariableOpconv2d_6/kernelIdentity_17"/device:CPU:0*
dtype0
W
Identity_18IdentityRestoreV2:18"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_18AssignVariableOpconv2d_7/biasIdentity_18"/device:CPU:0*
dtype0
W
Identity_19IdentityRestoreV2:19"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_19AssignVariableOpconv2d_7/kernelIdentity_19"/device:CPU:0*
dtype0
W
Identity_20IdentityRestoreV2:20"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_20AssignVariableOpconv2d_8/biasIdentity_20"/device:CPU:0*
dtype0
W
Identity_21IdentityRestoreV2:21"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_21AssignVariableOpconv2d_8/kernelIdentity_21"/device:CPU:0*
dtype0
W
Identity_22IdentityRestoreV2:22"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_22AssignVariableOpconv2d_9/biasIdentity_22"/device:CPU:0*
dtype0
W
Identity_23IdentityRestoreV2:23"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_23AssignVariableOpconv2d_9/kernelIdentity_23"/device:CPU:0*
dtype0
O
VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
O
VarIsInitializedOp_1VarIsInitializedOpconv2d/bias*
_output_shapes
: 
Q
VarIsInitializedOp_2VarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
S
VarIsInitializedOp_3VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_4VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
Q
VarIsInitializedOp_5VarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
Q
VarIsInitializedOp_6VarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
R
VarIsInitializedOp_7VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_8VarIsInitializedOpdense_1/bias*
_output_shapes
: 
Q
VarIsInitializedOp_9VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
T
VarIsInitializedOp_10VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
T
VarIsInitializedOp_11VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
R
VarIsInitializedOp_12VarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
O
VarIsInitializedOp_13VarIsInitializedOp
dense/bias*
_output_shapes
: 
R
VarIsInitializedOp_14VarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
T
VarIsInitializedOp_15VarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
R
VarIsInitializedOp_16VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
T
VarIsInitializedOp_17VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
T
VarIsInitializedOp_18VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_19VarIsInitializedOpdense/kernel*
_output_shapes
: 
T
VarIsInitializedOp_20VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
T
VarIsInitializedOp_21VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
R
VarIsInitializedOp_22VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
T
VarIsInitializedOp_23VarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
?
initNoOp^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^conv2d_8/bias/Assign^conv2d_8/kernel/Assign^conv2d_9/bias/Assign^conv2d_9/kernel/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign
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
?
save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*?

value?
B?
B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp*&
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
2
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOpconv2d/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
X
save/AssignVariableOp_1AssignVariableOpconv2d/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpconv2d_1/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpconv2d_1/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
U
save/AssignVariableOp_4AssignVariableOp
dense/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
W
save/AssignVariableOp_5AssignVariableOpdense/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
W
save/AssignVariableOp_6AssignVariableOpdense_1/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
Y
save/AssignVariableOp_7AssignVariableOpdense_1/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
X
save/AssignVariableOp_8AssignVariableOpconv2d_2/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Z
save/AssignVariableOp_9AssignVariableOpconv2d_2/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
Z
save/AssignVariableOp_10AssignVariableOpconv2d_3/biassave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
\
save/AssignVariableOp_11AssignVariableOpconv2d_3/kernelsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
Z
save/AssignVariableOp_12AssignVariableOpconv2d_4/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
\
save/AssignVariableOp_13AssignVariableOpconv2d_4/kernelsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
Z
save/AssignVariableOp_14AssignVariableOpconv2d_5/biassave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0*
_output_shapes
:
\
save/AssignVariableOp_15AssignVariableOpconv2d_5/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
Z
save/AssignVariableOp_16AssignVariableOpconv2d_6/biassave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
\
save/AssignVariableOp_17AssignVariableOpconv2d_6/kernelsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
Z
save/AssignVariableOp_18AssignVariableOpconv2d_7/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
\
save/AssignVariableOp_19AssignVariableOpconv2d_7/kernelsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:
Z
save/AssignVariableOp_20AssignVariableOpconv2d_8/biassave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0*
_output_shapes
:
\
save/AssignVariableOp_21AssignVariableOpconv2d_8/kernelsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:
Z
save/AssignVariableOp_22AssignVariableOpconv2d_9/biassave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
T0*
_output_shapes
:
\
save/AssignVariableOp_23AssignVariableOpconv2d_9/kernelsave/Identity_23*
dtype0
?
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9

init_1NoOp"?D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"?
trainable_variables??
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
?
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
?
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
?
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"?
	variables??
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
?
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
?
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
?
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08*@
__saved_model_init_op'%
__saved_model_init_op
init_1*?
serving_default?
?
conv2d_input/
conv2d_input:0???????????3
dense_1(
dense_1/Softmax:0?????????tensorflow/serving/predict