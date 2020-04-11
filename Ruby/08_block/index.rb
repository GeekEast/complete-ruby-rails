def test
    puts 'start running block'
    yield
    puts 'stop running block'
end

# pass statement into a function
test { puts 'hello world' } # execute the test function with extra statement passed in 




def test
    yield 5
end
# you can pass arguments from function into the external statement!
test { |i| puts "What? #{i}"}


def test(a, &block)  # def test
    block.call(a)     #    yield
end                # end
test {puts 'hello world'}


def test
    for i in (0..4)
        yield i
    end
end
test do |i|
    p i
    p i+1
end


(0..10).each { |x| puts x }

for i in 1..10
    puts i
end

puts i

while i<10 do
    i += 1
end 

puts i


5.times { |number| puts "#{number}"}

5.times do |number|
    square = number * number
    puts square
end




