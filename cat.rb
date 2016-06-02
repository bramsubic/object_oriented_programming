class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time) #method
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    puts "#{name} eats at #{meal_time}"
  end

  def meow
    puts "My name is #{name} I like eating #{preferred_food} at #{meal_time}"
  end

end

bubbles = Cat.new('bubbles', 'milk', '9pm')
bubbles.eats_at
bubbles.meow

sprinkles = Cat.new('sprinkles', 'donuts', '3pm')
sprinkles.eats_at
sprinkles.meow
