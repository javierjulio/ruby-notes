# generate a 10 digit UID


# first attempt

def uid
  
  (1..10).map { Random.new.rand(0..9) }.join
  
end


# second attempt

def uid2
  
  chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
  
  (1..10).map { chars[Random.new.rand(chars.length-1)] }.join
  
end



puts uid

puts uid2



# http://blog.logeek.fr/2009/7/2/creating-small-unique-tokens-in-ruby
# 
# rand(36**10).to_s(36)