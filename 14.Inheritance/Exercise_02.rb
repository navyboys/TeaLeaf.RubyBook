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
  CATEGORY = 'TRUCK'
end

class MyCar < Vehicle
  CATEGORY = 'CAR'
end

new_car = MyCar.new
new_truck = MyTruck.new
puts Vehicle.total_created_numbers