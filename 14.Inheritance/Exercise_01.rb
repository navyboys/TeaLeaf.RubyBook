class Vehicle
end

class MyTruck < Vehicle
  CATEGORY = 'TRUCK'
end

class MyCar < Vehicle
  CATEGORY = 'CAR'
end

p new_car = MyCar.new
p new_truck = MyTruck.new