mutable struct Cat <: AbstractAnimal
    base::BaseAnimal
    climbing_speed::Float64
    Cat( speed:: Float64) = new( BaseAnimal(), speed )
end

func get_climbing_speed( cat :: Cat)
    return cat.climbing_speed
end 
