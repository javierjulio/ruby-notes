# A method returns the value of the last line
# Methods that act as queries are often named with a trailing ?  
# Methods that are "dangerous," or modify the receiver, might be named  
# with a trailing ! (Bang methods)  
# A simple method  
def hello
    'Hello'
end  
#use the method  
puts hello  

# Method with an argument - 1  
def hello1(name)
    'Hello ' + name  
end  
puts(hello1('satish'))

# Method with default values for arguments
def getFullName(arg1="Barton", arg2="Joey")
    "#{arg1}, #{arg2}"
end

puts getFullName
puts getFullName("Simpson", "Danny")

# alias new_name old_name  
# When a method is aliased, the new name refers  
# to a copy of the original method's body  

def oldmtd  
    "old method"  
end  
alias newmtd oldmtd  
def oldmtd  
    "old improved method"  
end  
puts oldmtd  
puts newmtd 

# variable number of parameters example  
# The asterisk is actually taking all arguments you send to the method  
# and assigning them to an array named my_string as shown below  
# The do end is a Ruby block which we talk in length later  
def sum(*values)
    
    result = 0
    
    values.each do |value|
        result = result + value
    end
    
    return result
end

puts(sum 1, 2, 3, 4)