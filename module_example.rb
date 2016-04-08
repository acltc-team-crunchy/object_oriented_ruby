module Motion
  attr_reader :speed

  def initialize
    @speed = 0
    @direction = 'north'
  end

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

class Car
  include Motion
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Motion
  def ring_bell
    puts "Ring ring!"
  end
end

huffy = Bike.new
huffy.accelerate
huffy.ring_bell

toyota = Car.new
toyota.brake
puts toyota.speed
toyota.honk_horn