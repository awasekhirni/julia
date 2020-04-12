#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

module MyDemoPkg

greet() = print("Hello World!")

abstract type Shape end
combined_area(a::Shape,b::Shape)=area(a)+area(b)

struct Circle <: Shape
    diameter::Float64
end

radius(c::Circle) = c.diameter/2
area(c::Circle) = π * radius(c) ^ 2


abstract type AbstractRectangle <:Shape end
area(r::AbstractRectangle) = width(r) *height(r)

struct Rectangle <: AbstractRectangle
    width::Float64
    height::Float64
end
width(r::Rectangle) = r.width
height(r::Rectangle) = r.height

struct Square <:AbstractRectangle
    length::Float64
end

width(s::Square) = s.length
height(s::Square) = s.length

end # module
