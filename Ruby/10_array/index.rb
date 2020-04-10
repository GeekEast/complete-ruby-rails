ns = [1,2,3,4]
# puts ns # print seperate line of each elements
p ns


toys = [1, "a"] # you can put different types here
# puts toys
p toys

x = Array.new(10, 2)
y = Array.new(2,[1,2,3])
p y

#零售
p ns[0]
p ns[100]
p ns[-1] # last one

# p ns.fetch(5) # throw errors
p ns.fetch(5, nil) # return nill
p ns.fetch(5, 'haha') # return haha
p ns.values_at(0,1,3,3,100) 

# 批发
p ns[0,1] # [0,1)
p ns[0...1] # [0,1)
p ns[0..1] # [0,1]
p ns[0,100] # no errors fetch all

p ns.slice(3)
p ns.slice(3,5) # no errors no nil
p ns.slice(0..1)
p ns.slice(0...1)


ns[0] = 5
p ns
ns[10] = 6 # will be populated, value sit in between will be nil
p ns
ns[0..1] = 1 # will be shorter
p ns



p ns.length # ns.size
p ns.count(1) # count how many 1


p ns.empty? # length == 0 ?
p ns.nil? # value == nil? pretty natural



p ns.first
p ns.first(3) # first 3 elements
p ns.last
p ns.last(2) # last 2 elements



# push
locations = ["House", "Airport", "Bar"]
p locations

locations << 'School' << 'Playground'
locations.push 'Toilet', 'Bathroom'
p locations

locations.unshift('Header')
p locations
locations.unshift('1','2','3')
p locations
locations.insert(0, 'Home')
p locations

# pop: remove and return
p locations.pop
p locations
p locations.pop(2) # return as an array
p locations


# pop in head
p locations.shift
p locations
p locations.shift(2) # return as an array
p locations


# compare
a = [1,2,3]
b = [1,2,3]
c = [2,3,4]
d = ['1','2','3']
p a == b # true, compare content
p a != b # false 
p a <=> b # return 0
p a <=> c # return -1 if left is smaller than right
p c <=> a # return 1 if left is larger than right
p a <=> d # different type return nil


# range to array
p (0..10).to_a
p ("A".."Z").to_a


p [1,2,3].is_a? Array

a = [1,2,3]
b = [1,2]
c = [1,2,3]
p a <=> b # 1
p b <=> a # -1
p a <=> c # 0

p (1..5).to_a
