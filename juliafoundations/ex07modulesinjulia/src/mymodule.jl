#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#


module MyModule
export stepTwo

a=313
function stepOne(x)
    return x^2
end #function end

function stepTwo(y)
    return stepOne(y) * a
end #function end

end #module-end
