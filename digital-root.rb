# The digital root is you take a number such as 1219 and add the individual 
# digits so 1 + 2 + 1 + 9 = 13 and the result should always be a single digit 
# so since its 13, we repeat the process, break up the number and add so we 
# do 1 + 3 = 4 so the digital root of 1219 is 4

class Numeric
  
  def digital_root
    
    if self < 10 then
      self
    else
      to_s.split("").map { |i| i.to_i }.inject(:+).digital_root
    end
    
  end
  
end

num = 1234

puts num.digital_root

puts num


puts 1234.digital_root
puts 12345678.digital_root