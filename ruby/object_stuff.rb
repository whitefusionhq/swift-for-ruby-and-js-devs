class PondAnimal
  attr_accessor :sound, :flies

  def initialize
    self.sound = ""
    self.flies = false
  end

  def describe
    puts("I make #{sound} sounds")
    if flies
      puts("I can fly!")
    else
      puts("I can't fly :(")
    end
  end
end

class Frog < PondAnimal
  def initialize
    super
    self.sound = "ribbit"
  end
end

class Duck < PondAnimal
  def initialize
    super
    self.sound = "quack"
    self.flies = true
  end
end

frog = Frog.new
frog.describe

duck = Duck.new
duck.describe
