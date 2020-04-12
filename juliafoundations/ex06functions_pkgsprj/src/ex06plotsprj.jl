#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

Pkg.add("Plots")
using Plots

x=-3:0.1:3
#function that squares the input
f(x)=x^2
#square every element
y=f.(x)
#generate data for backend
gr()
#plotting the data
#line plotting
plot(x,y,label="line")
#scatter plotting
# mutating an existing plot
scatter!(x,y,label="points")

#using custom data to plot
#earning for a crop
temp=[14.4,14.5,14.8,15.2,15.5,15.8]
earnings=[45000,36000,24000,20000,19800,16400]

plot(earnings,temp,legend=false)
scatter!(earnings,temp,legend=false)
#reversing the x-axis
xflip!()

#adding title and labels
xlabel!("earnings per crop")
ylabel!("temperature in degrees centigrade")
title!("global warming impact on crop yeild and earnings")
