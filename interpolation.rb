# Interpolation refers to the process of inserting the result of an expression 
# into a string literal. The way to interpolate within a string is to place 
# the expression within #{ and } symbols. An example demonstrates this:
puts "100 * 5 = #{100 * 5}"


def getFullName(arg1="Barton", arg2="Joey")
    "#{arg1}, #{arg2}"
end

puts getFullName
puts getFullName("Simpson", "Danny")