def old_roman_numeral(an_integer)
  # TODO: translate integer in roman number - old-style way
array = ["M","D","C","L","X","V","I"]

nb_m = an_integer / 1000
an_integer = an_integer - (nb_m * 1000)
nb_d = an_integer / 500
an_integer = an_integer - (nb_d * 500)
nb_c = an_integer / 100
an_integer = an_integer - (nb_c * 100)
nb_l = an_integer / 50o
an_integer = an_integer - (nb_l * 50)
nb_x = an_integer / 10
an_integer = an_integer - (nb_x * 10)
nb_v = an_integer / 5
an_integer = an_integer - (nb_v * 5)
nb_i = an_integer

array_figure = [nb_m, nb_d, nb_c, nb_l, nb_x, nb_v, nb_i]
roman_numeral = array_figure[0] * array[0] + array_figure[1] * array[1]
end

puts old_roman_numeral(3512)

def new_roman_numeral(an_integer)
  # TODO: translate integer in roman number - modern-style way
end
