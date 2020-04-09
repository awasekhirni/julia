#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

println("Welcome to Julia Programming -Syed Awase Khirni!")
x=rand(3,3)
println(x)

# this is a single line comment

#=
 lets learn about julia basic data type constructs indepth here
 1.variables => variables can have unicode characters in it

=#
mynameis = "SyedAwaseKhirni"
myskills_are="increasing"
#delta is a unicode construct in julia
# to write delta we use \delta + add tab
Δ =6.626
println(mynameis)
println(myskills_are)
println(Δ)
println(typeof(Δ))
#checking the datatype as in javascript
my_score=89
println(typeof(my_score))
#checking the datatype of all the variables
println(typeof(mynameis))

#=
understanding type hierarchy
=#
#to get the super type of the data type
println(supertype(Number))
println(subtypes(Number))
#printing the type hierarchy

#lets create a function type tree
function showtypetree(T,level=0)
    println("---"^ level,T)
    for t in subtypes(T)
        showtypetree(t,level+1)
    end
end

#lets call the typetree function
println(showtypetree(Number))

#lets call the typetree function for string
println(showtypetree(String))

#to compute the size of the variable
println(sizeof(my_score))
#to learn how big a number can be fit in the variable defined
println(typemax(my_score))
#to learn how small a number can be fit in the vairable.
println(typemin(my_score))

#lets look at other variable examples
myvar =326+262
println( myvar)
#addition
myvar +=3289
println( myvar)

#lets look at unicode variables
#\alpha + tab
# not that you need to assign values to these unicode else julia throws an error
# this is a pretty interesting feature for use for mathematical notation and symbols
α =22.37
#\beta + tab
β=26.26
#\gamma + tab
γ =1.172
println(α,β,γ)

# to list all the variables currently used in the memory for this particular session
# we can use whos()

#=
String in Julia and manipulation
String datatype
Strings are nothing but an array of characters
=#
thystrings="Look at the puppet strings to catch the puppet master"
println(thystrings)
println(uppercase(thystrings))
println(lowercase(thystrings))
#print substring
show(thystrings[1:18]);println()
show(thystrings[4]);println()
#alternatively we can use end keyword
show(thystrings[end-10:end]);println()

#string interpolation in julia
a="Syed"
b="fool"
println("$a ! you know hello, you $b ! i love you!, come on enjoy the joy ride!!")

#string interpolation can be extended to evaluate statements
println("12+32=$(12+32)")

#string can also be concatenated using the *operator
# using * instead of "+" operator as is in other programming languages
# julia uses * to concatenate strings

# julia is nothing but a mashup of all the good features of all programming languages from javascript to RUST

make_julia_mashup= "copythis_feature" * "and" *" copy that feature from C to R, RUST" *" there you go a kichdi with performance"
println(make_julia_mashup)

println("finally! loving the features from javascript to RUST/R in one!!")

#lets peform some string manipulations here
char_position_of=findfirst(isequal('y'),make_julia_mashup)
println("the character position of 'y' is $char_position_of")

#replace parts of the string
way_all="bite it"
oo_way=replace(way_all,"bite"=>"ride")
println(oo_way)

#string replacement using regular expressions in julia
mysong="ek chatur naar badi hoshiyaar mere man ke dwaar"
replsong=replace(mysong,r"h[\w]*r"=>"haanikaar")
#it would replace at the every occurance of h and r start and ending.
show(replsong);println()

#alternatively we can use match function
# get the first match of the occurence h (start) and r (end)
ottosong=match(r"h[\w]*r",mysong)
println(ottosong)

#fetch iteratively using eachmatch all possible occurence in the string

ello=eachmatch(r"h[\w]*r",mysong)
for i in ello print("\"$i.match)\" ")end
println()


# to print a string repeatedly n number of times
myrepeat = "arre! bhole! sidhe ho jaa re!!!"^4
show(myrepeat);println()


#split based on an argument
mylo=split("mylo is an energy drink, which is 90% sugar, it has a major role in child obesity and diabetics",",")
show(mylo);println()


#joining multiple strings togethr as one single string
jumble_together=join(collect(18:25),",")
println(jumble_together)



#reverse string
mystory3="You know, hello! you fool i love you! come on enjoy the joy ride!!"
println(reverse(mystory3))
println(sizeof(mystory3))
