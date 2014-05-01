def capitalize(string)
  string.capitalize if string.length > 10
end

string = gets.chomp
if string.length <= 10
  puts string
else
  puts capitalize(string)
end
