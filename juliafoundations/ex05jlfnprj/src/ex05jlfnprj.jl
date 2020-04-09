#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

#function in julia

function add_fn(a,b)
    println(a+b)
end

function doubleIt(num)
    return num * 2
end

function retuningAFun()
    aValue=0
    return ((a)-> a+=a)
end

#function to compute the volume of a sphere
function compute_sphere_vol(r)
    return 4/3*π*r^3
end

println("the volume of the sphere is:",compute_sphere_vol(8))



#quadratic equation
quadratic(a,sqr_term,b)=(-b+sqr_term)/2a

#annonymous function
squareall(A)=map(x->x^2,A)
println(squareall(23:29))

#annonymous function
map(function(n)
    product=one(n)
    for i in 1:n
        product *=i
    end
    product
end,22:28
    )

#single expression functions
avg_zing(a,b)=sqrt(a^2+b^2)
println(avg_zing(45,89))

#higher order functions
function create_expo(expoval)
    exp_func=function(x)
        return x^expoval
    end
    return exp_func
end

expo_five=create_expo(5)
println(expo_five)

#annonymous functions
(x,y,z)->2x+3y+5z

map((x) -> x^3, [1, 2, 3, 4, 5])

#functional programming constructs

function Person(name,age)
    #methods
    getName()=name
    getAge()=age
    getOlder()=(age+=1)
    #public scoping
    ()->(getName;getAge;getOlder)
end

#executing the function
syedawase=Person("Syed Awase Khirni",39)
println(syedawase.getName())
println(syedawase.getAge())
println(syedawase.getOlder())

#custom types
struct Album
    name
    artist
    year
    duration
end

pk=Album("Pk","Aamir khan",2015,"145.00")
println(pk)
println(typeof(pk))
println(sizeof(pk))

struct Line
    slope::Float64
    intercept::Float64
end





struct LSD
    pounds::Integer
    shillings::Integer
    pence::Integer
    function LSD(a,b,c)
        if a < 0 || b< 0
            error("No negative numbers")
        end
        if (c > 12 || b > 20)
            error("two many pence or shillings")
        end
        new(a,b,c)
    end
end

myprice1=LSD(5,10,6)
println(myprice1)


struct MyTime
    hour
    minute
    second
end

time = MyTime(10,10,20)
println(time)















# struct Person
#     name::String
#     age::Int64
# end
#
# struct Shoes
#     shoesType::String
#     color::String
# end
#
# struct Student
#     id::Int64
#     name::String
#     email::String
#     grade::Float64
# end
#
#
# struct Employee
#     e::Person
#     shoes::Shoes
#     company::Stirng
#     monthlyIncomes::Float64
# end
#
#
# function displayInfo(self::Employee)
#     println("I work at $(self.company) company")
# end
#
# formalshoes=Shoes("formal","black")
# aicy=Employee(Person("Syed Awase Khirni", 39),formalshoes,"SycliQ Geospatial Pvt Ltd",302900.00)
# displayInfo(aicy)
