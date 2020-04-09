#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

#tuples in julia
#tuples are immubtable list of elements with or without paranthesis
mytuple1=1,2,3
mytuple2=(4,5,6)

#they can be easily unpackaed to multiple variables
#unpacking tuples
mytuple3=(3.1456,6.62670)
α,β=mytuple3
println(α)
println(β)
println(typeof(mytuple3))
println(typeof(α))

#convert tuple to a vector
myvector=[mytuple3...]
println(myvector)
println(typeof(myvector))
myvector1=collect(mytuple3)
println(myvector1)
#alternatively we can also use this approach
myvector2=[i[1] for i in mytuple3]
println(myvector2)

#converting a vector to a tuple
mytuple4=(myvector2...,)
println(mytuple4)

#named tuples are collections of items whose position in the collection is index.
#it can be identified not only by using the name but also position
scientific_constants=(π=3.1456, ℎ=6.626070)
println(scientific_constants.π)
#fetching the tuple keys
println(keys(scientific_constants))
println(values(scientific_constants))
myarr13=collect(scientific_constants)
println(myarr13)

#iterating and printing the values of the named tuple
for (k,v) in pairs(scientific_constants)
    println("key:$k -- value:$v")
end

#adding key/value to an existing tuple
amazon_product_price=(sony=38947,oneplus=35721,samsung=43981)
println(amazon_product_price)
#using namedtuples.jl
#flipkart_pricing=amazon_product_price.setindex(amazon_product_price, :oppo, 19645)
#println(flipkart_pricing)

#checking whether the tuple is empty or not
println(isempty(amazon_product_price))
println(amazon_product_price[:sony])

#named tuple with mixed value
mytuple5=(x=12,y=1236,status="Completed")
println(mytuple5)

#fetching the index and value
myval6=getindex(mytuple5,:y)
myval7=getindex(mytuple5,3)
println(myval6)
println(myval7)

#using zip to create a tuple
tkeys=(:δ,:α,:β,:γ,:θ)
tvalues=(12.12,13.13,14.14,15.15,16.16)
freedom_degrees=(; zip(tkeys,tvalues)...)
println(freedom_degrees)

#combining two tuples together in julia
bse_tuple=(abb=12.12,infy=23.12,sycliq=45.32,intuple=21.12)
nse_tuple=(icici=12.75,hsbc=65.21,irdb=12.12,ghfc=16.12)

#using the merge operator
stock_exchange_india=merge(bse_tuple,nse_tuple)
println(stock_exchange_india)


#dictionaries

#they are used to store mappings from keys to values and they have random sorting

#empty dictionary
mydict1=Dict()
println(mydict1)
println(sizeof(mydict1))
println(typeof(mydict1))

#dictionary with values
#untype dictionary
mydict2=Dict("sony"=>23622,"oppo"=>9873,"lenovo"=>4524,"nokia"=>6726)
println(mydict2)
println(typeof(mydict2))
println(sizeof(mydict2))

#typed dictionary
mydict3=Dict{String,Integer}("x"=>137,"y"=>362,"z"=>1267)
println(mydict3)
println(typeof(mydict3))
println(sizeof(mydict3))
println(mydict3["x"])

#integer keys in dictionary
mydict4=Dict(1=>132,2=>383,3=>"Syed Awase")
println(mydict4)
println(typeof(mydict4))
println(sizeof(mydict4))

#get() operator to access elements of a dictionary
#get function
println(get(mydict4,3,"sorry no data found"))

#iterating over a dictionary using for loop
for j in mydict4
    println(j)

end


# Creating a Dictionary with mixed-typed keys
mydict5 = Dict("a" => 6362, "b" => 342, "c" => "Salut!", 4 => 101010)
#for loop printing key value pair
for (n,m) in mydict5
    println(n,"=>",m)
end

#deleting an existing key
mydict6=delete!(mydict5,"c")
println(mydict6)

#adding a new key to an existing dictionary
mydict6["z"]=6736
println(mydict6)

#merging two dictionaries in julia
mydict7= Dict("abb"=>13278,"infy"=>25,"sycliq"=>1263,"intuple"=>1278)
mydict8=Dict("airbnb"=>67132,"cgi"=>1378,"danske"=>7812378)
println(merge(mydict7,mydict8))
println(merge(+,mydict7,mydict8))

#set in julia
# sets to represent collections of unorder, unique values
#creating an empty set
mysetting1=Set()
println("EmptySet:",mysetting1)
println("EmptySet Type Check:",typeof(mysetting1))
mysetting2=Set([123,23,437,36,8712,263])
println("myset2:",mysetting2)
println("myset2-typecheck:",typeof(mysetting2))
println("sizeofcheck:",sizeof(mysetting2))

#creating a mixed set with mixed data types
myset3=Set([123,327,236,"SyedAwase","SyedAmeese"])
println("myset3",myset3)
println("myset3-typeofcheck",typeof(myset3))

#iteratively printing set values using for loops
for i in myset3
    println(i)
end

#merging or union of two sets
println(union(myset3, myset4))

#intersection of two sets
println(intersect(myset3,myset4))

#difference of two sets
println(setdiff(myset3, myset4))

#check equality of two sets
println(issetequal([23,45,66],[23,45]))

#deepcopy and shallow copy example
mydata=Any[22,23,24,[45,47,49]]
println(mydata)
println(typeof(mydata))
myshallowc=copy(mydata)
mydeepc=deepcopy(mydata)
println(myshallowc)
println(mydeepc)


vals=[23,73,233]
myset7=Set(vals)
pop!(myset7,23)
push!(myset7,234)
println(myset7)
