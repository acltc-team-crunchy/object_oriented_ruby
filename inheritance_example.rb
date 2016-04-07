class Vehicle
  attr_reader :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end

  # def direction
  #   @direction
  # end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle
  attr_reader :gas
  
  def initialize
    super
    @gas = "full"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  
  def ring_bell
    puts "Ring ring!"
  end
end

toyota = Car.new
toyota.honk_horn
puts toyota.direction
puts toyota.gas

mongoose = Bike.new
mongoose.ring_bell
puts mongoose.direction