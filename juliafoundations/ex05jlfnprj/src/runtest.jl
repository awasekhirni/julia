using OOPTest

dog = Dog("bruno")
cat = Cat(10.0)

@show get_owner_name( dog )
@show get_climbing_speed( cat )
@show get_weight( dog )
@show get_weight( cat )
