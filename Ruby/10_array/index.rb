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



p [1,2,false].reverse!

arr = [1,3,2,4]
asc = arr.sort # 1,2,3,4
desc1 = arr.sort { |a,b| b <=> a }
desc2 = arr.sort.reverse

p arr
p asc
p desc1
p desc2


x = [1,2,3]
y = x + [4,5]
p y

x = [1,2,3]
x.concat [4,5]
p x 


x = [1,2,3]
p x.max
p x

p [[],[1,2],[1,2,3]].min_by { |sa| sa.length }


x = [1,2,3,4,5]
p x.index(2)
p x.find_index(2)


numbers = [1,2,2,3,3,4,4,5]
a = numbers.reject { |x| x > 2 }
p numbers
p a 


x = [1,2,3]
a,b,c = x;

p a 
p b
p c


arr = [1,2,3,4,5,6,7]
p arr.partition { |n| n == 4}