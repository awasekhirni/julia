#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

module ShapesModule

export Circle, computePerimeter, computeArea, printCircle


mutable struct Circle{T<:Real}
    radius::T
    perimeter::Float64
    area::Float64
    #constructor
    function Circle{T}(radius::T) where T<:Real
        #we initialize perimeter and area to -1.0
        new(radius,-1.0,-1.0)
    end # end of function
end #end of structure

@doc raw"""
computePermiter(circle::Circle)
compute the perimeter of `circle` and store the value.
"""
function computePerimeter(circle::Circle)
	circle.perimeter = 2*π*circle.radius
	return circle.perimeter
end

@doc raw"""
	computeArea(circle::Circle)

Compute the area of `circle` and store the value.
"""
function computeArea(circle::Circle)
	circle.area = π*circle.radius^2
	return circle.area
end

@doc raw"""
	printCircleEquation(xc::Real, yc::Real, circle::Circle )

Print the equation of a cricle with center at (xc, yc) and radius given by circle.
"""
function printCircleEquation(xc::Real, yc::Real, circle::Circle )
	println("(x - $xc)^2 + (y - $yc)^2 = $(circle.radius^2)")
	return
end
end # end module
