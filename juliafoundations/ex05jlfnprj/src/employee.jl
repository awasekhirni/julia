#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#

#employee specification

const GLOBALS=Dict(:empCount => 0)

#struct

struct Employee
    name::String
    salary::Float64

    function Employee(name::AbstractString, sal::Real)
        GLOBALS[:empCount] += 1
        new(name,sal)
    end
end

display_employee_count() = println("Total Employees: $(GLOBALS[:empCount])")


function Base.show(io::IO, emp::Employee)
    println(io, "Employee (Name: $(emp.name), Salary: $(emp.salary))")
end


emp1 = Employee("Zara", 2000)
emp2 = Employee("Manni", 5000)

show(emp1)
show(emp2)

display_employee_count()
