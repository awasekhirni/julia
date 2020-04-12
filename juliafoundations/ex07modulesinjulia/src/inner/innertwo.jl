#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#
function innerTwoFirst(j)
    println("inside innerTwoFirst")
    return j^2
end

function innerTwoSecond(k)
    println("inside innerTwoSecond")
    return innerTwoFirst(k)^2
end
