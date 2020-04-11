### Block
- One method to run function
- Can pass parameters into the function 
```ruby
def test 
    yield # run the block statement here
end
# the name must be the same with the function name
test { puts 'hello block' }
```
- Pass arguments into block
```ruby
def test
    yield 5
end
# you can pass arguments from function into the external statement!
test { |i| puts "What? #{i}"}
```
- Long Statement
```ruby
def test
    for i in (0..4)
        yield i
    end
end
test do |i|
    p i
    p i+1
end
```

- Another way to call statement in function
```ruby
def test(&block)  # def test
    block.call     #    yield
end                # end
```


### BEGIN & END
```ruby
BEGIN {} # run before others
END {} # run after other
```