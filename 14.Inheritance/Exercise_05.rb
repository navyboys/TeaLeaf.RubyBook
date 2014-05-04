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
  attr_accessor :color
  attr_reader :year
  @@total_created_numbers = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@total_created_numbers += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "Speeded up with #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "Pushed the brake with #{number} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Shutted down."
  end

  def current_speed
    puts "Current Speed is #{@current_speed} mph."
  end

  def spray_paint(color)
    self.color = color
    puts "The car is painted an new color, #{color}!"
  end

  def self.total_created_numbers
    puts "#{@@total_created_numbers} vehicles has been created."
  end
end

class MyTruck < Vehicle
  include Carriable
  CATEGORY = 'TRUNK'

  def to_s
    "My truck is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyCar < Vehicle
  CATEGORY = 'CAR'
  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

new_car = MyCar.new(2013, 'black', 'new_forester')
new_car.speed_up(60)
new_car.current_speed
new_car.brake(20)
new_car.current_speed
new_car.shut_down
new_car.spray_paint('red')
puts new_car.color

new_truck = MyTruck.new(2010, 'blue', 'new_truck')
new_truck.speed_up(40)
new_truck.current_speed
new_truck.brake(20)
new_truck.current_speed
new_truck.shut_down
new_truck.spray_paint('yellow')
puts new_truck.color