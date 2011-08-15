
def repeat(str, count)
  
  result = ''
  
  
  # Approach 1
  
  #0.upto(count) do
  #  result = result + str
  #end
  
  
  # Approach 2
  
  #count.downto 0 do
  #  result = result + str
  #end
  
  
  # Approach 3
  
  #count.times { result += str }
  
  #result
  
  
  # Approach 4 (awesomeness!)
  
  str * count
  
end

puts(repeat 'test', 5)