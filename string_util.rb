

def repeat(str, count)
    
    result = ''
    
    #0.upto(count) do
    #    result = result + str
    #end
    
    count.downto 0 do
        result = result + str
    end
    
    result
    
end

puts(repeat 'test', 5)

5.times { puts "Mice!\n" } # more on blocks later  
"Elephants Like Peanuts".length 