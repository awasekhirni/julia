

mutable struct BaseAnimal
    name::String
    weight::Float64
    BaseAnimal() = new("",1.0)
end

func get_weight(animal::AbstractAnimal)
    return animal.base.weight
end
