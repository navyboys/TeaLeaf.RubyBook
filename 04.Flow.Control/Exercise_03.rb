number = gets.chomp.to_i

output = case
  when number <= 50
    "The number is less than 50."
  when number > 50 && number <= 100
    "The number is between 50 and 100."
  when number > 100
    "The number is greater than 100."
  end

puts output