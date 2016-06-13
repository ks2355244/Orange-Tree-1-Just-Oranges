# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  attr_accessor :age, :height # age, height they are both attributes/characteristics/ instance variable inside this class OrangeTree
  # Ages the tree one year

  def initialize(feet, year) # initialize is method, feet& year are called arguments/inputs/parameters of method
    @height = feet
    @age = year
    @oranges = []
  end

  def aging #instance method that can only run on instance variable
    @age += 1
    if @age >= 3
      @oranges << Orange.new(rand(1..5))
    end
     @height = @age + 2
  end



  def dead?
    return true if @age >= 8
  end


  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    !!(@oranges.length > 0) #got orange
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    return @oranges.shift(1) if any_oranges?   #means this method will return me an orange object if there is oranges on the tree
    # orange-picking logic goes here
  end
end

class Orange
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = diameter
  end
end

#driver code
tree = OrangeTree.new(0,0) #tree is instance variable
tree.age! until tree.any_oranges? # all these methods age! or any_oranges? they are instance methods that run on instance variable only
puts "Tree is #{tree.age} years old & #{tree.height} feet tall."

until tree.dead? # means it will be true when @age hits 8
  basket = []

  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

  avg_diameter = 3




  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} inches."
  puts ""

  tree.age!
 # tree.height! #running this instance method called height! on my instance variable
 
end

puts "Alas, the tree, she is dead!"
