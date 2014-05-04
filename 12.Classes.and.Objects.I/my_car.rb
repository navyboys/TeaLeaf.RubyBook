class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
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

end

new_forester = MyCar.new(2013, 'black', 'new_forester')
new_forester.speed_up(60)
new_forester.current_speed
new_forester.brake(20)
new_forester.current_speed
new_forester.shut_down

new_forester.color = 'green'
puts new_forester.color
puts new_forester.year

new_forester.spray_paint('red')