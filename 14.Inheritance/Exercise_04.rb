module Carriable
  def can_carry?(kilograms)
    if kilograms < 1000 
      puts "My truck can carry #{kilograms} kilos."
      true
    else
      puts "It's too heavy!"
      false
    end
  end
end

class Vehicle
  @@total_created_numbers = 0

  def self.total_created_numbers
    puts "#{@@total_created_numbers} vehicles has been created."
  end

  def initialize
    @@total_created_numbers += 1
  end
end

class MyTruck < Vehicle
  include Carriable
  CATEGORY = 'TRUNK'
end

class MyCar < Vehicle
  CATEGORY = 'CAR'
end

puts MyCar.ancestors
puts "---"
puts MyTruck.ancestors
puts "---"
puts Vehicle.ancestors