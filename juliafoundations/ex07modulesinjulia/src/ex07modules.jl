#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#


#modules in julia /libraries in julia

#a module is a separate environment with its set of variables and functions,some of which are exported in the calling scope which means that you can call exported functions by simply typing  their names as if they were defined in the same scope

#moduleName.functionName

#import only specific functions
#using moduleName: fn1,fn2

include("./mymodule.jl")
using .MyModule
resultant = stepTwo(7)
println("the result operation is:$resultant")


include("./outermodule.jl")
using .OuterModule
firstout = innerOneSecond(3)
secondout = innerTwoSecond(4)
println("firstout result:$firstout")
println("secondout result:$secondout")
