# Using Class Variables and Methods
###################################

puts "Class Variables and Methods"



class Polygon
  
  # class variable (static)
  @@sides = 8
  
  # class method (static)
  def self.sides
    @@sides
  end
  
end

puts Polygon.sides # => 8



class Triangle < Polygon
  
  # this overwrites parent value by default, don't confuse this with 
  # constants, this same behavior can exist in AS3 but you'd have 
  # to declare getters and setters and override in child class
  @@sides = 3
  
end

puts Triangle.sides # => 3
puts Polygon.sides # => 3



class Rectangle < Polygon
  
  # changing a class variable in a sub class not only changes the parent 
  # value but in all other sub classes too!
  @@sides = 4
  
end

puts Rectangle.sides # => 4
puts Triangle.sides # => 4
puts Polygon.sides # => 4



# Using Instance Variables and Methods
######################################

puts "Instance Variables and Methods"


class Polygon
  
  # instance variables defined with @ symbol, class variables with 2 @@
  @sides = 8
  
end

puts Polygon.class_variables # => @@sides
puts Polygon.instance_variables # => @sides



