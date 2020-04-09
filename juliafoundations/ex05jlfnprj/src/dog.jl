mutable struct Dog <:AbstractAnimal
    base::BaseAnimal
    owner_name::String
    Dog(name::String) = new (BaseAnimal(),name)
end


function get_owner_name(dog::Dog)
    return dog.owner_name
end
