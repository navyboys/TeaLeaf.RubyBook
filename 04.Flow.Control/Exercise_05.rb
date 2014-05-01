def if_number(number)
  if number < 0
    puts "Please input a number between 0 and 100."
  elsif number <= 50
    puts "#{number} is between 0 and 50."
  elsif number <= 100
    puts "#{number} is between 51 and 100."
  else
    puts "#{number} is greater than 100."
  end
end

def case_number(number)
  case number
    when 0..50
      puts "#{number} is between 0 and 50."
    when 51..100
      puts "#{number} is between 51 and 100."
    else
      if number < 0
        puts "Please input a number between 0 and 100."
      else
        puts "#{number} is greater than 100."
      end
  end
end


puts "Input a number between 0 and 100!"
number = gets.chomp.to_i

case_number(number)