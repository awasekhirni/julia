#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

#Arrays in Julia
println("Julia Section: Arrays ")
#Array be initialized directly
# a 3-element Array with {Int64,1}
#Note: julia array index start from 1 not 0
myarr=[23,34,24]
println(myarr)
println(myarr[1])
#an empty array
myarr2=[]
println(myarr2)
println(typeof(myarr2))
println(sizeof(myarr2))

#ranges are different from arrays
myarr3=23:29
function printsome(a)
    println(summary(a),":",repr(a))
end
println(printsome(myarr3))

#comprehensions
myarr4=[2^i for i=1:10]
println(printsome(myarr4))

#creating an array with explicit array statement
myarr5=(Array{Int64,1})[]
printsome(myarr5)

#creating two dimensional arrays using innner and outer
myarr6=repeat(myarr4,inner=[3],outer=[1])
printsome(myarr6)
myarr7=repeat(collect(4:-1:1),inner=[1],outer=[2])
printsome(myarr7)

#comprehensions
myarr8=[arr for arr in 90:99]
println(myarr8)

#creating matrices
matrix=[1 2 3 4;
        5 6 7 8;
        9 10 11 12]
println(matrix)


#multidimensional array
myarr9=[i+j+k for i=1:2, j=1:3, k=1:2]
println(myarr9)
#array reductions
#make the sum of the number over the 3rd dimension
println(sum(myarr9,dims=3))
println(sum(myarr9,dims=(1,3)))
#compute the maxium for a dimension
println(maximum(myarr9,dims=2))
#find the maxium no on the dimension
println(findmax(myarr9,dims=3))

#spread and broadcast operations in array
#adding a number to all the elements of the array
println(myarr9 .+5)
#adding a vector to all the elements
println(myarr9 .+[2,4])

#slicing an array
myarr10=myarr9[:,:,1]
println("myarray10 is $myarr10")
