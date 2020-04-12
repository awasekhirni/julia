#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

Pkg.activate("MyDemoPkg")


using MyDemoPkg
myc = MyDemoPkg.Circle(9)
mys = MyDemoPkg.Square(9)
myr = MyDemoPkg.Rectangle(5,3)

@show MyDemoPkg.combined_area(myc,mys)
@show MyDemoPkg.combined_area(mys,myr)
