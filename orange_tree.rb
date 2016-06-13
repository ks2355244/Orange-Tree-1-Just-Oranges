# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  attr_accessor :age 
  # Ages the tree one year

  def initialize(feet, age)
    @height = height
    @age = year
  end

  def age!
    @age += 1
    if tree.age = 8[{n} 1+n ]
      puts 
  end

  def height!
    height = age + 2
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    if any_oranges? >= 1
      puts "true"
  else
    puts "false"
  end 
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    p basket << tree.pick_an_orange if any_oranges >= 1  
    # orange-picking logic goes here
  end
end

class Orange
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = inches
  end
end

tree = OrangeTree.new
tree.age! until tree.any_oranges?
puts "Tree is #{tree.age} years old & #{}{tree.height} feet tall."

until tree.dead?
basket = []

while tree.any_oranges?
basket << tree.pick_an_orange!
end

avg_diameter = 3

def Harvest
  basket = size{|avg_diameter| avg_diameter * 4}
end

puts "Year #{tree.age} Report"
puts "Tree height: #{tree.height} feet"
puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} inches."
puts ""

tree.age!
end

puts "Alas, the tree, she is dead!"
