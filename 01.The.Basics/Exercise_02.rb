number = 4321

the_thousands_number = number / 1000
the_hundreds_number = ( number % 1000 ) / 100
the_tens_number =  ( number % 100 ) / 10
the_ones_number =  number % 10

puts the_thousands_number
puts the_hundreds_number
puts the_tens_number
puts the_ones_number