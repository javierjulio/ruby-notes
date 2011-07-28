# if-else conditionals

name = 'Xavier'

if name == 'Javier'
    puts 'What a nice name!'
elsif name == 'Xavier'
    puts 'Another nice name!'
end  

# The only difference between or and || is their precedence. || has a higher precedence than or.
if name == 'Javier' or name == 'Xavier' then
    puts 'Welcome ' + name + '!'
end

# You may be used to thinking that a false value may be represented as a zero, a null 
# string, a null character, or various other things. But in Ruby, all of these *values* 
# are true; in fact, everything is true except the reserved words false and nil.
# In Ruby, nil and false evaluate to false, everything else (including true, 0) means true.

puts nil || 2008    # 2008
puts false || 2008  # 2008
puts "ruby" || 2008 # ruby

# nil and false are not the same things. Both have a false value and also remember 
# that everything in Ruby is an object.

testValue = 0

if testValue then # 0 evaluates to true
    puts 'testValue is ' + testValue.to_s + ' and evaluates to true'
end

puts NIL.class # NilClass
puts nil.class # NilClass

# FALSE is synonym for false
puts FALSE.class #FalseClass
puts false.class #FalseClass
puts false.object_id # 0


# A common idiom is to use || to assign a value to a variable only if that variable isn't already set.
    
myVar = myVar || "default value"

# or, more idiomatically, as:

myVar ||= "default value"