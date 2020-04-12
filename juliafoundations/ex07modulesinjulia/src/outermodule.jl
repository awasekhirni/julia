#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

module OuterModule
include("inner/innerone.jl")
include("inner/innertwo.jl")

export innerOneSecond
export innerTwoSecond

end #end of the module
