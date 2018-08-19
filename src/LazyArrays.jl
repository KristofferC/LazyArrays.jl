module LazyArrays
using Base, Base.Broadcast, LinearAlgebra
import LinearAlgebra.BLAS

import Base: ReinterpretArray, ReshapedArray, AbstractCartesianIndex, Slice,
             RangeIndex, BroadcastStyle, copyto!, length, broadcastable, axes,
             getindex, eltype, tail

import Base: *, +, -, /, \, ==, isinf, isfinite, sign, angle, show, isless,
         fld, cld, div, min, max, minimum, maximum, mod,
         <, ≤, >, ≥, promote_rule, convert, copy,
         size, step, isempty, length, first, last,
         getindex, setindex!, OneTo, intersect, @_inline_meta, inv,
         sort, sort!, issorted, sortperm, sum, in, broadcast,
         eltype, parent, real, imag,
         conj, transpose,
         exp, log, sqrt, cos, sin, tan, csc, sec, cot,
                   cosh, sinh, tanh, csch, sech, coth,
                   acos, asin, atan, acsc, asec, acot,
                   acosh, asinh, atanh, acsch, asech, acoth, (:),
         AbstractMatrix, AbstractArray, checkindex, unsafe_length, OneTo,
        to_shape, _sub2ind, print_matrix, print_matrix_row, print_matrix_vdots,
      checkindex, Slice, @propagate_inbounds, @_propagate_inbounds_meta,
      _in_range, _range, _rangestyle, Ordered,
      ArithmeticWraps, floatrange, reverse, unitrange_last,
      AbstractArray, AbstractVector, axes, (:), _sub2ind_recurse, broadcast, promote_eltypeof,
      similar, @_gc_preserve_end, @_gc_preserve_begin,
      has_offset_axes

import Base.Broadcast: BroadcastStyle, AbstractArrayStyle, Broadcasted, broadcasted,
                        @nexprs, @ncall, combine_eltypes, DefaultArrayStyle, instantiate

import LinearAlgebra.BLAS: BlasFloat, BlasReal, BlasComplex

export Mul, Hcat, Vcat, Kron, BroadcastArray, cache, Ldiv, Inv

include("memorylayout.jl")
include("mul.jl")
include("inv.jl")
include("cache.jl")
include("lazybroadcasting.jl")
include("lazyconcat.jl")
include("lazykron.jl")

end # module
