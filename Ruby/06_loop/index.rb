
#  while loop
x = 1
LIMIT = 10
while x <= LIMIT do
    puts "increasing #{x}"
    x += 1
end


x=1
LIMIT=10
until x > LIMIT do
    puts "increasing #{x}"
    x += 1
end


# for loop
for i in 0..5
    if i < 2 then
        next # continue in ruby 
     end
     puts "Value of local variable is #{i}"
end



arr =  [1,2,3]

arr.each_with_index do |a, b|
    p a
    p b
end
