class Array

#   def average
#     
#     total = 0
#     
#     each { |i| total += i }
#     
#     total / length
#     
#   end

#   def average
#     
#     inject {|sum, n| sum + n } / length
#     
#   end

  def average
    
    inject(:+) / length
    
  end

end


puts [1,2,3,4,5,6,7,8].average