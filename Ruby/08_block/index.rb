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

