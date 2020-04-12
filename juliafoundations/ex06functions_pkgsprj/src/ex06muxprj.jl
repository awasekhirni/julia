
#=
 Copyright 2018-19 Syed Awase Khirni
 www.sycliq.com www.territorialprescience.com
 awasekhirni@gmail.com 9035433124 bangalore, India
=#


#julia mux middleware similar to golang mux
Pkg.add("Mux")
using Mux
@app test=(
  Mux.defaults,
  page(respond("
Hello World! Mux Julia
")),
  page("/about",
       probabilty(0.1, respond("
Boo!
")),
       respond("
About Me
")),
  page("/user/:user", req -> "
Hello, $(req[:params][:user])!
"),
  Mux.notfound())

serve(test)
#renders on localhost:8000
