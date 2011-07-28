def sayHello(name=nil) 
    
    if name.nil? then
        name = 'World!'
    end
    
    puts "Hello #{name}" + ' Welcome back!'
end

sayHello