#
# 'make depend' uses makedepend to automatically generate dependencies 
#               (dependencies are added to end of Makefile)
# 'make'        build executable file 'mycc'
# 'make clean'  removes all .o and executable files
#

CC = g++
CFLAGS = -Wall -g -O2
INCLUDES = -I../eigen3
LFLAGS = -L../lib 

# List all the source files here
OBJS = math_test.o state.o

# Target 1
math_test: math_test.o state.o 
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ $^ $(LFLAGS) $(LIBS)

# Pattern matching
# For targets of the form %.o (e.g. state.o) with the single
# dependency %.cpp (e.g. state.cpp). $< is %.cpp and $@ is
# %.o
#
%.o: %.cpp
	$(CC) $(CFLAGS) $(INCLUDES) -c $<  -o $@

.PHONY: depend clean

clean:
	-rm -f *.o *~ math_test

depend: $(OBJS:.o=.cpp)
	makedepend $(INCLUDES) $^


# DO NOT DELETE THIS LINE -- make depend needs it

math_test.o: state.hpp ../eigen3/Eigen/Core
math_test.o: ../eigen3/Eigen/src/Core/util/DisableStupidWarnings.h
math_test.o: ../eigen3/Eigen/src/Core/util/Macros.h
math_test.o: ../eigen3/Eigen/src/Core/util/MKL_support.h
math_test.o: ../eigen3/Eigen/src/Core/util/Constants.h
math_test.o: ../eigen3/Eigen/src/Core/util/Meta.h
math_test.o: ../eigen3/Eigen/src/Core/util/ForwardDeclarations.h
math_test.o: ../eigen3/Eigen/src/Core/util/StaticAssert.h
math_test.o: ../eigen3/Eigen/src/Core/util/XprHelper.h
math_test.o: ../eigen3/Eigen/src/Core/util/Memory.h
math_test.o: ../eigen3/Eigen/src/Core/NumTraits.h
math_test.o: ../eigen3/Eigen/src/Core/MathFunctions.h
math_test.o: ../eigen3/Eigen/src/Core/GenericPacketMath.h
math_test.o: ../eigen3/Eigen/src/Core/MathFunctionsImpl.h
math_test.o: ../eigen3/Eigen/src/Core/arch/Default/ConjHelper.h
math_test.o: ../eigen3/Eigen/src/Core/arch/CUDA/Half.h
math_test.o: ../eigen3/Eigen/src/Core/arch/CUDA/PacketMathHalf.h
math_test.o: ../eigen3/Eigen/src/Core/arch/CUDA/TypeCasting.h
math_test.o: ../eigen3/Eigen/src/Core/arch/Default/Settings.h
math_test.o: ../eigen3/Eigen/src/Core/functors/TernaryFunctors.h
math_test.o: ../eigen3/Eigen/src/Core/functors/BinaryFunctors.h
math_test.o: ../eigen3/Eigen/src/Core/functors/UnaryFunctors.h
math_test.o: ../eigen3/Eigen/src/Core/functors/NullaryFunctors.h
math_test.o: ../eigen3/Eigen/src/Core/functors/StlFunctors.h
math_test.o: ../eigen3/Eigen/src/Core/functors/AssignmentFunctors.h
math_test.o: ../eigen3/Eigen/src/Core/arch/CUDA/Complex.h
math_test.o: ../eigen3/Eigen/src/Core/IO.h
math_test.o: ../eigen3/Eigen/src/Core/DenseCoeffsBase.h
math_test.o: ../eigen3/Eigen/src/Core/DenseBase.h
math_test.o: ../eigen3/Eigen/src/plugins/BlockMethods.h
math_test.o: ../eigen3/Eigen/src/Core/MatrixBase.h
math_test.o: ../eigen3/Eigen/src/plugins/CommonCwiseUnaryOps.h
math_test.o: ../eigen3/Eigen/src/plugins/CommonCwiseBinaryOps.h
math_test.o: ../eigen3/Eigen/src/plugins/MatrixCwiseUnaryOps.h
math_test.o: ../eigen3/Eigen/src/plugins/MatrixCwiseBinaryOps.h
math_test.o: ../eigen3/Eigen/src/Core/EigenBase.h
math_test.o: ../eigen3/Eigen/src/Core/Product.h
math_test.o: ../eigen3/Eigen/src/Core/CoreEvaluators.h
math_test.o: ../eigen3/Eigen/src/Core/AssignEvaluator.h
math_test.o: ../eigen3/Eigen/src/Core/Assign.h
math_test.o: ../eigen3/Eigen/src/Core/ArrayBase.h
math_test.o: ../eigen3/Eigen/src/plugins/ArrayCwiseUnaryOps.h
math_test.o: ../eigen3/Eigen/src/plugins/ArrayCwiseBinaryOps.h
math_test.o: ../eigen3/Eigen/src/Core/util/BlasUtil.h
math_test.o: ../eigen3/Eigen/src/Core/DenseStorage.h
math_test.o: ../eigen3/Eigen/src/Core/NestByValue.h
math_test.o: ../eigen3/Eigen/src/Core/ReturnByValue.h
math_test.o: ../eigen3/Eigen/src/Core/NoAlias.h
math_test.o: ../eigen3/Eigen/src/Core/PlainObjectBase.h
math_test.o: ../eigen3/Eigen/src/Core/Matrix.h
math_test.o: ../eigen3/Eigen/src/Core/Array.h
math_test.o: ../eigen3/Eigen/src/Core/CwiseTernaryOp.h
math_test.o: ../eigen3/Eigen/src/Core/CwiseBinaryOp.h
math_test.o: ../eigen3/Eigen/src/Core/CwiseUnaryOp.h
math_test.o: ../eigen3/Eigen/src/Core/CwiseNullaryOp.h
math_test.o: ../eigen3/Eigen/src/Core/CwiseUnaryView.h
math_test.o: ../eigen3/Eigen/src/Core/SelfCwiseBinaryOp.h
math_test.o: ../eigen3/Eigen/src/Core/Dot.h
math_test.o: ../eigen3/Eigen/src/Core/StableNorm.h
math_test.o: ../eigen3/Eigen/src/Core/Stride.h
math_test.o: ../eigen3/Eigen/src/Core/MapBase.h
math_test.o: ../eigen3/Eigen/src/Core/Map.h ../eigen3/Eigen/src/Core/Ref.h
math_test.o: ../eigen3/Eigen/src/Core/Block.h
math_test.o: ../eigen3/Eigen/src/Core/VectorBlock.h
math_test.o: ../eigen3/Eigen/src/Core/Transpose.h
math_test.o: ../eigen3/Eigen/src/Core/DiagonalMatrix.h
math_test.o: ../eigen3/Eigen/src/Core/Diagonal.h
math_test.o: ../eigen3/Eigen/src/Core/DiagonalProduct.h
math_test.o: ../eigen3/Eigen/src/Core/Redux.h
math_test.o: ../eigen3/Eigen/src/Core/Visitor.h
math_test.o: ../eigen3/Eigen/src/Core/Fuzzy.h ../eigen3/Eigen/src/Core/Swap.h
math_test.o: ../eigen3/Eigen/src/Core/CommaInitializer.h
math_test.o: ../eigen3/Eigen/src/Core/GeneralProduct.h
math_test.o: ../eigen3/Eigen/src/Core/Solve.h
math_test.o: ../eigen3/Eigen/src/Core/Inverse.h
math_test.o: ../eigen3/Eigen/src/Core/SolverBase.h
math_test.o: ../eigen3/Eigen/src/Core/PermutationMatrix.h
math_test.o: ../eigen3/Eigen/src/Core/Transpositions.h
math_test.o: ../eigen3/Eigen/src/Core/TriangularMatrix.h
math_test.o: ../eigen3/Eigen/src/Core/SelfAdjointView.h
math_test.o: ../eigen3/Eigen/src/Core/products/GeneralBlockPanelKernel.h
math_test.o: ../eigen3/Eigen/src/Core/products/Parallelizer.h
math_test.o: ../eigen3/Eigen/src/Core/ProductEvaluators.h
math_test.o: ../eigen3/Eigen/src/Core/products/GeneralMatrixVector.h
math_test.o: ../eigen3/Eigen/src/Core/products/GeneralMatrixMatrix.h
math_test.o: ../eigen3/Eigen/src/Core/SolveTriangular.h
math_test.o: ../eigen3/Eigen/src/Core/products/GeneralMatrixMatrixTriangular.h
math_test.o: ../eigen3/Eigen/src/Core/products/SelfadjointMatrixVector.h
math_test.o: ../eigen3/Eigen/src/Core/products/SelfadjointMatrixMatrix.h
math_test.o: ../eigen3/Eigen/src/Core/products/SelfadjointProduct.h
math_test.o: ../eigen3/Eigen/src/Core/products/SelfadjointRank2Update.h
math_test.o: ../eigen3/Eigen/src/Core/products/TriangularMatrixVector.h
math_test.o: ../eigen3/Eigen/src/Core/products/TriangularMatrixMatrix.h
math_test.o: ../eigen3/Eigen/src/Core/products/TriangularSolverMatrix.h
math_test.o: ../eigen3/Eigen/src/Core/products/TriangularSolverVector.h
math_test.o: ../eigen3/Eigen/src/Core/BandMatrix.h
math_test.o: ../eigen3/Eigen/src/Core/CoreIterators.h
math_test.o: ../eigen3/Eigen/src/Core/ConditionEstimator.h
math_test.o: ../eigen3/Eigen/src/Core/BooleanRedux.h
math_test.o: ../eigen3/Eigen/src/Core/Select.h
math_test.o: ../eigen3/Eigen/src/Core/VectorwiseOp.h
math_test.o: ../eigen3/Eigen/src/Core/Random.h
math_test.o: ../eigen3/Eigen/src/Core/Replicate.h
math_test.o: ../eigen3/Eigen/src/Core/Reverse.h
math_test.o: ../eigen3/Eigen/src/Core/ArrayWrapper.h
math_test.o: ../eigen3/Eigen/src/Core/GlobalFunctions.h
math_test.o: ../eigen3/Eigen/src/Core/util/ReenableStupidWarnings.h
state.o: state.hpp ../eigen3/Eigen/Core
state.o: ../eigen3/Eigen/src/Core/util/DisableStupidWarnings.h
state.o: ../eigen3/Eigen/src/Core/util/Macros.h
state.o: ../eigen3/Eigen/src/Core/util/MKL_support.h
state.o: ../eigen3/Eigen/src/Core/util/Constants.h
state.o: ../eigen3/Eigen/src/Core/util/Meta.h
state.o: ../eigen3/Eigen/src/Core/util/ForwardDeclarations.h
state.o: ../eigen3/Eigen/src/Core/util/StaticAssert.h
state.o: ../eigen3/Eigen/src/Core/util/XprHelper.h
state.o: ../eigen3/Eigen/src/Core/util/Memory.h
state.o: ../eigen3/Eigen/src/Core/NumTraits.h
state.o: ../eigen3/Eigen/src/Core/MathFunctions.h
state.o: ../eigen3/Eigen/src/Core/GenericPacketMath.h
state.o: ../eigen3/Eigen/src/Core/MathFunctionsImpl.h
state.o: ../eigen3/Eigen/src/Core/arch/Default/ConjHelper.h
state.o: ../eigen3/Eigen/src/Core/arch/CUDA/Half.h
state.o: ../eigen3/Eigen/src/Core/arch/CUDA/PacketMathHalf.h
state.o: ../eigen3/Eigen/src/Core/arch/CUDA/TypeCasting.h
state.o: ../eigen3/Eigen/src/Core/arch/Default/Settings.h
state.o: ../eigen3/Eigen/src/Core/functors/TernaryFunctors.h
state.o: ../eigen3/Eigen/src/Core/functors/BinaryFunctors.h
state.o: ../eigen3/Eigen/src/Core/functors/UnaryFunctors.h
state.o: ../eigen3/Eigen/src/Core/functors/NullaryFunctors.h
state.o: ../eigen3/Eigen/src/Core/functors/StlFunctors.h
state.o: ../eigen3/Eigen/src/Core/functors/AssignmentFunctors.h
state.o: ../eigen3/Eigen/src/Core/arch/CUDA/Complex.h
state.o: ../eigen3/Eigen/src/Core/IO.h
state.o: ../eigen3/Eigen/src/Core/DenseCoeffsBase.h
state.o: ../eigen3/Eigen/src/Core/DenseBase.h
state.o: ../eigen3/Eigen/src/plugins/BlockMethods.h
state.o: ../eigen3/Eigen/src/Core/MatrixBase.h
state.o: ../eigen3/Eigen/src/plugins/CommonCwiseUnaryOps.h
state.o: ../eigen3/Eigen/src/plugins/CommonCwiseBinaryOps.h
state.o: ../eigen3/Eigen/src/plugins/MatrixCwiseUnaryOps.h
state.o: ../eigen3/Eigen/src/plugins/MatrixCwiseBinaryOps.h
state.o: ../eigen3/Eigen/src/Core/EigenBase.h
state.o: ../eigen3/Eigen/src/Core/Product.h
state.o: ../eigen3/Eigen/src/Core/CoreEvaluators.h
state.o: ../eigen3/Eigen/src/Core/AssignEvaluator.h
state.o: ../eigen3/Eigen/src/Core/Assign.h
state.o: ../eigen3/Eigen/src/Core/ArrayBase.h
state.o: ../eigen3/Eigen/src/plugins/ArrayCwiseUnaryOps.h
state.o: ../eigen3/Eigen/src/plugins/ArrayCwiseBinaryOps.h
state.o: ../eigen3/Eigen/src/Core/util/BlasUtil.h
state.o: ../eigen3/Eigen/src/Core/DenseStorage.h
state.o: ../eigen3/Eigen/src/Core/NestByValue.h
state.o: ../eigen3/Eigen/src/Core/ReturnByValue.h
state.o: ../eigen3/Eigen/src/Core/NoAlias.h
state.o: ../eigen3/Eigen/src/Core/PlainObjectBase.h
state.o: ../eigen3/Eigen/src/Core/Matrix.h ../eigen3/Eigen/src/Core/Array.h
state.o: ../eigen3/Eigen/src/Core/CwiseTernaryOp.h
state.o: ../eigen3/Eigen/src/Core/CwiseBinaryOp.h
state.o: ../eigen3/Eigen/src/Core/CwiseUnaryOp.h
state.o: ../eigen3/Eigen/src/Core/CwiseNullaryOp.h
state.o: ../eigen3/Eigen/src/Core/CwiseUnaryView.h
state.o: ../eigen3/Eigen/src/Core/SelfCwiseBinaryOp.h
state.o: ../eigen3/Eigen/src/Core/Dot.h ../eigen3/Eigen/src/Core/StableNorm.h
state.o: ../eigen3/Eigen/src/Core/Stride.h ../eigen3/Eigen/src/Core/MapBase.h
state.o: ../eigen3/Eigen/src/Core/Map.h ../eigen3/Eigen/src/Core/Ref.h
state.o: ../eigen3/Eigen/src/Core/Block.h
state.o: ../eigen3/Eigen/src/Core/VectorBlock.h
state.o: ../eigen3/Eigen/src/Core/Transpose.h
state.o: ../eigen3/Eigen/src/Core/DiagonalMatrix.h
state.o: ../eigen3/Eigen/src/Core/Diagonal.h
state.o: ../eigen3/Eigen/src/Core/DiagonalProduct.h
state.o: ../eigen3/Eigen/src/Core/Redux.h ../eigen3/Eigen/src/Core/Visitor.h
state.o: ../eigen3/Eigen/src/Core/Fuzzy.h ../eigen3/Eigen/src/Core/Swap.h
state.o: ../eigen3/Eigen/src/Core/CommaInitializer.h
state.o: ../eigen3/Eigen/src/Core/GeneralProduct.h
state.o: ../eigen3/Eigen/src/Core/Solve.h ../eigen3/Eigen/src/Core/Inverse.h
state.o: ../eigen3/Eigen/src/Core/SolverBase.h
state.o: ../eigen3/Eigen/src/Core/PermutationMatrix.h
state.o: ../eigen3/Eigen/src/Core/Transpositions.h
state.o: ../eigen3/Eigen/src/Core/TriangularMatrix.h
state.o: ../eigen3/Eigen/src/Core/SelfAdjointView.h
state.o: ../eigen3/Eigen/src/Core/products/GeneralBlockPanelKernel.h
state.o: ../eigen3/Eigen/src/Core/products/Parallelizer.h
state.o: ../eigen3/Eigen/src/Core/ProductEvaluators.h
state.o: ../eigen3/Eigen/src/Core/products/GeneralMatrixVector.h
state.o: ../eigen3/Eigen/src/Core/products/GeneralMatrixMatrix.h
state.o: ../eigen3/Eigen/src/Core/SolveTriangular.h
state.o: ../eigen3/Eigen/src/Core/products/GeneralMatrixMatrixTriangular.h
state.o: ../eigen3/Eigen/src/Core/products/SelfadjointMatrixVector.h
state.o: ../eigen3/Eigen/src/Core/products/SelfadjointMatrixMatrix.h
state.o: ../eigen3/Eigen/src/Core/products/SelfadjointProduct.h
state.o: ../eigen3/Eigen/src/Core/products/SelfadjointRank2Update.h
state.o: ../eigen3/Eigen/src/Core/products/TriangularMatrixVector.h
state.o: ../eigen3/Eigen/src/Core/products/TriangularMatrixMatrix.h
state.o: ../eigen3/Eigen/src/Core/products/TriangularSolverMatrix.h
state.o: ../eigen3/Eigen/src/Core/products/TriangularSolverVector.h
state.o: ../eigen3/Eigen/src/Core/BandMatrix.h
state.o: ../eigen3/Eigen/src/Core/CoreIterators.h
state.o: ../eigen3/Eigen/src/Core/ConditionEstimator.h
state.o: ../eigen3/Eigen/src/Core/BooleanRedux.h
state.o: ../eigen3/Eigen/src/Core/Select.h
state.o: ../eigen3/Eigen/src/Core/VectorwiseOp.h
state.o: ../eigen3/Eigen/src/Core/Random.h
state.o: ../eigen3/Eigen/src/Core/Replicate.h
state.o: ../eigen3/Eigen/src/Core/Reverse.h
state.o: ../eigen3/Eigen/src/Core/ArrayWrapper.h
state.o: ../eigen3/Eigen/src/Core/GlobalFunctions.h
state.o: ../eigen3/Eigen/src/Core/util/ReenableStupidWarnings.h
