#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

#functions and packages in Julia Programming










#Packages section Julia
#currently julia has around 1534 registered packages in the julia ecosystem
# https://pkg.julialang.org
#https://juliaobserver.com -> it lists trending packages by category.

#using a package
#adding the package to the environment
#"Example" is the name of the package
Pkg.add("Example")
#to load the package in julia to run it
using Example
#https://github.com/JuliaLang/Example.jl/blob/master/src/Example.jl

hello(who::String) = "Hello, $who"
println(hello("Julie! i love you!=> julie says! You know hello! you fool i love you!!!"))

#https://julia-ylwu.readthedocs.io/en/latest/packages/packagelist.html

#Colors Package
#https://github.com/JuliaGraphics/Colors.jl
Pkg.add("Colors")
#importing the colors package
using Colors
palette=distinguishable_colors(100)
println(palette)
col_mat=rand(palette,3,3)
println(col_mat)

#Highly optimized business days calculator
Pkg.add("BusinessDays")
using BusinessDays, Dates
#creating a cache for US federal holdays
iDays=BusinessDays.initcache(:USSettlement)
println(iDays)
#referencing using symbols calendar
bDayslist=isbday(:USSettlement,Date(2017,5,3))
println(bDayslist)
oDay=isbday(BusinessDays.USSettlement(),Date(2017,6,24))
println(oDay)
#adjusting to the next business day
sDay=tobday(:USSettlement,Date(2017,6,24))
println(sDay)

#Adjusting to the last business day
lastWorkingDay=tobday(:USSettlement,Date(2017,6,25); forward=false)
println("lastworking day is $(lastWorkingDay)")
#advancing 1 business day
nextWorkingDay=advancebdays(:USSettlement, Date(2017,10,3),1)
prevWorkingDay=advancebdays(:USSettlement,Date(2017,9,8),-1)
println("the next working day is : $(nextWorkingDay)")
println("the previous working day is : $(prevWorkingDay)")
#compute the number of business days between dates
cnt_workingdays=bdays(:USSettlement, Date(2017,2,1),Date(2017,3,1))
println("the no of working days in feb 2017 are: $cnt_workingdays")
#alternative approach => return integer no of days
cnt_wdays=bdayscount(:USSettlement,Date(2017,5,1),Date(2017,6,1))
println("the no of working days in may 2017 are: $cnt_wdays")
#checking for business day
mycheck=isbday(:USSettlement, [Date(2017,5,3),Date(2017,6,3),Date(2017,7,3)])
println("check for businessdays in a list are : $mycheck")

#String distance package in Julia
Pkg.add("StringDistances")
using StringDistances
#computing the edit distance between two strings

#Jaro_winkler distance metric
# a string metric measuring an edit distance between two sequences.
# sometimes also referred to as a distance metric.
println(evaluate(Levenshtein(),"SyedAwaseKhirni","SyedOwaisQarni"))
println(compare("SyedAwaseKhirni","SyedOwaisQarni",Levenshtein()))


#https://juliacollections.github.io/DataStructures.jl/latest/
#Adding DataStructure Package in Julia
Pkg.add("DataStructures")
using DataStructures

#deque datastructure implements a double ended queue using a list of blocks
# the data structure supports constant-time insertion/removal of elements at both ends of a sequence
dlist=Deque{Int}()
#check if it is empty
println(isempty(dlist))
#compute the length
dcount=length(dlist)
println(dcount)
#adding an element to the end
push!(dlist,10)
push!(dlist,20)
println(dlist)
#adding an elemnt to the front end
pushfirst!(dlist,30)
println(dlist)
#remove an element from the front
popfirst!(dlist)
println(dlist)
#remove an element from the end
pop!(dlist)
println(dlist)
#getting the first and the last element from the list
println(first(dlist))
println(last(dlist))

#circular buffer type implements a circular buffer of fixed capacity where new items are pushed to the back of the list,overwriting values in a circular fashion
#allocate an Integer buffer with a maximum number
#mycbf=CircularBuffer{Int}(n)
mycbf = CircularBuffer{Int}(10)

#adding an element to the back
push!(mycbf,101)
println(mycbf)
push!(mycbf,102)
#check if the buffer is full
println(isfull(mycbf))
#check if the buffer is empty
println(isempty(mycbf))
#check the capacity
println(capacity(mycbf))
#fetch the number of elements currently in the buffer
println(length(mycbf))
println(size(mycbf))
#remove the element at the back
println(mycbf)
pop!(mycbf)
println(mycbf)
#adding an element to the front
pushfirst!(mycbf,109)
println(mycbf)
popfirst!(mycbf)
#appending a list of elements
append!(mycbf,[101,102,103,104,105,106,107,108,109,110,111])
println(mycbf)
#converting the items to type Float64
println(convert(Vector{Float64},mycbf))
#return type of the elements
println(eltype(mycbf))
#index based fetching of the element
println(mycbf[5])
println(mycbf[1])
println(mycbf[end])


#http package
Pkg.add("HTTP")
using HTTP

#client request example
myrequest = HTTP.request("GET","http://httpbin.org/ip";verbose=3)
println(myrequest.status)
println(String(myrequest.body))

#http server rendering example
# http port listener at localhost:8081
HTTP.listen() do http::HTTP.Stream
    @show http.message
    @show HTTP.header(http,"Content-Type")
    while !eof(http)
        println("body context:",String(readavailable(http)))
    end
    HTTP.setstatus(http,404)
    HTTP.setheader(http,"Sycliq"=>"TPRI")
    HTTP.startwrite(http)
    write(http,"Syed Awase Khirni")
    write(http,"Julia is mixture of all the programming language- A Nice evolution of the language taking the best from all the programming languages.")
end

#julia debugger package
Pkg.add("Debugger")
using Debugger
