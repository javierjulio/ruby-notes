def max(val1, val2, *rest)
    
    # start off with first value
    result = val1
    
    # append any extra values
    numbers = [val1, val2].concat rest
    
    # go through all numbers and save which ever is largest
    numbers.each do |i|
        if i > result then
            result = i
        end
    end
    
    result
end

puts(max 5, 10, 7, 8)
puts(max 8, 8.2, 8.1)



def min(val1, val2, *rest)
    
    result = val1
    
    numbers = [val1, val2].concat rest
    
    numbers.each do |i|
        if i < result then
            result = i
        end
    end
    
    result
    
end

puts(min 4, 2)
puts(min 9, 8, 7, 6, 5)
puts(min 1, 2, 3, 4, 5, 6, 0.5)

# Check math-with-blocks.rb for the same methods but using 
# blocks to solve sandwich code problem!