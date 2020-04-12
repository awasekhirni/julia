#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#
#Pkg.add(PackageSpec(url="ex09createpkgjuliaprj/src/Aicy/src"))
Pkg.activate("Aicy")
import Aicy

using Aicy
Aicy.greet()
z=Aicy.myfunctionAicyPkg(9)
println("---------------")
println(z)
