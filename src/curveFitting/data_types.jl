
mutable struct param_struct
    mx; mn; ampl; sos; eos; doy_peak; deltaT; deltaY; half; t1; t2; k
end

# input of check_input object
mutable struct input_struct
    y::AbstractArray{<:Real, 1}
    t::AbstractArray{<:Real, 1}
    w::AbstractArray{<:Real, 1}
end

function input_struct(y::AbstractArray{T, 1}, t::AbstractArray{T, 1}) where {T<:Real}
    input_struct(y, t, ones(y))
end

