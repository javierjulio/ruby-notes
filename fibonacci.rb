@numbers = [0, 1]

def fibonacci(index)
  indexIsNegative = (index < 0)
  index = index.abs
  
  while @numbers.count <= index do
    @numbers << @numbers[-1] + @numbers[-2]
    puts "nums: #{@numbers}"
  end
  
  if indexIsNegative && index.even?
    return @numbers[index] * -1
  end
  
  return @numbers[index]
end

puts fibonacci(3)
puts fibonacci(10)
puts fibonacci(20)
puts fibonacci(-8)
