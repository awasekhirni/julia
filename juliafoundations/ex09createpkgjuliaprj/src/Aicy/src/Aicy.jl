module Aicy

using SpecialFunctions

greet() = print("Hello Aicy! Syed Awase Khirni")

function myfunctionAicyPkg(y)
    return y^3 * gamma(y)
end
end # module
