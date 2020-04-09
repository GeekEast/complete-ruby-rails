# equal version which return number
p 1 <=> 2 # return -1

# include check
p (1...10) === 5 # 5 is within (1...10)

# check type & value
p 1.eql?(1.0) # same type, same value -> false

# memory addr compare
a = "1"
b = "1"
p a.equal?(b) # memory addr is different

# swap values
a = 1
b = 2
a, b = b, a
puts a
puts b

# can appy to 1/0 or true/false
puts (1 and 1) # need ()
puts (true or false) # need ()

puts true && true # no need for ()
puts 1 || 0 # no need for ()

# can only apply to true/false
puts not(false) # puts !false

# check var/func is defined or not
a = 1
puts defined? a # local-variables

# double dot: to access const/class/module under centain namespace (class|module)
PLAY = 1
p ::PLAY # by default: p Object::PLAY

module TestS
  MILES = 1
  class Horse
  end
end

puts TestS::Horse
