#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

#conditionals in julia
if true
    println("Yay! it's true!: Aliens Exist!-US Nevada Site")
else
    println("Nay!, it is all fiction, US-Nevada Site is fiction!")
end

#alternatively
if false
    println("Dirty money has come back to India!")
else
    println("Dirty money is still there but now in the hands of RSS")
end

#equality check
if "Awase"=="Awase"
    println("It is true")
else
    println("it is not true!")
end

if "Aicy"!="Awase"
    println("It is true")
else
    println("it is false")
end

#occurence check
if occursin("chain","chainkuli ki main kuli ki chain!")
    println("True")
else
    println("False")
end

#complex logical statements can be achieved with elseif condition

function checkmate(x)
    if x isa Int
        println("Look peter! it is an Integer")
    elseif x isa AbstractFloat
        println("look peter! it is a floating point - like pi and plancks constant")
    elseif x isa Complex
        println("look peter! it is a Complex no! whoa! ")
    else
        println("look deeper peter! i still cannot understand!")
    end
end #function ending

#lets check the value of x
checkmate(12367)
checkmate(π)
checkmate(√Complex(22))
checkmate("who is Douglas Evans Coe!")





#logical and, logicalOR operations
myval=12367
myval <100 && println("True")
myval ==0 && println("TRUE")

√myval ==0 || println("False")


#loops in julia

for j in 1:10
    println(j, ",")
end

myarr12=collect(31:35)
for k in myarr12
    if k %2 !=0
        continue
    end
    print(k,",")
    if k >=8
        break
    end
end
println()

#while loop in julia

while !isempty(myarr12)
    print(pop!(myarr12),",")
end
println()
