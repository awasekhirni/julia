#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

#structures in julia

#abstract type in julia
abstract type Person
end

#extending a type
abstract type SportsPerson <: Person
end

abstract type Professional <: Person
end

#mutable structure type
mutable struct Player <: SportsPerson
    name::String
    sporttype::String
    clubName::String
    tournament::String
    ranking::Int
end



#struct
struct CertifiedProfessional <: Professional
    name::String
    stream::String
    certification::String
    hourlycharges::Int
end

cardiologist=CertifiedProfessional("Syed Rayyan Awais", "CardioSurgeon", "FRCS", 870)
println(cardiologist)
println(typeof(cardiologist))
println(sizeof(cardiologist))

footballplayer = Player("Syed Moinuddin","football","hyderabad football club","fifa",52)
println(footballplayer)
println(typeof(footballplayer))
println(sizeof(footballplayer))
println(footballplayer.ranking)


include("./shapesmodule.jl")
using .ShapesModule

ball=Circle{Float64}(7.0)
cp = computePerimeter(ball)
ca = computeArea(ball)
println(cp)
println(ca)
println(ball.perimeter)
println(ball.area)
