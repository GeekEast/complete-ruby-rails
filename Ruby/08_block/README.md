### Block
- pass as temporary code into a function
- can be only used once
```ruby
def test 
    yield # run the block statement here
end
# the name must be the same with the function name
test { puts 'hello block' }
```
- Pass arguments into block from function
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
- Condition on block passing
```ruby
def pass_control_on_condition
    puts "inside the method"
    # won't throw error
    if block_given? # yield if block_given?
        yield
    end
    puts "Back sinde the method"
end



```


### BEGIN & END
```ruby
BEGIN {} # run before others
END {} # run after other
```

### Reuse Block - Proc

```ruby
cubes = Proc.new { |n| n ** 3 }

a = [1,2,3,4]
b = [2,3,4,5]
p a.map &cubes
p b.map &cubes
```
- block is not an objet, while proc is an object
```ruby
cube = Proc.new { puts "hi there"}
cube.call # run this proc
```
- Function to Proc
```ruby
["1","2","3"].map { |n| n.to_i }
["1","2","3"].map(&:to_i) # apply the to_i method of "1","2","3"
```
- Pass proc as an arugment
```ruby
def talk_about(name, &myprc) # & to signify as a proc
  puts "let me tell about #{name}"
  myprc.call(name)
end

x = Proc.new do |name|
  puts name
end

talk_about("James", &x)
```


### Lambda
- almost the same. lambda is more popular
```ruby
squares_proc = Proc.new { |n| n ** 2 }
p [1, 2, 3].map(&squares_proc)

squares_lambda = lambda { |n| n ** 2 }
p [1, 2, 3].map(&squares_lambda)
```
- proc ignore **unexpected** arguments and set them to `nil`
```ruby
some_proc = Proc.new { |x,y| puts x}
some_proc.call(1,2,3) # no error 

some_lambda = lambda { |x,y| puts }
some_lambda.call(1,2,3) # throw error
```
- `return` works totally different in `proc` and `lambda`, Don' use `return` inside `proc`
```ruby
def diet
  status = lambda { return "x" } 
  status.call # return won't stop diet method here
  "y"
end

def die
  status = Proc.new {return "x"}
  status.call # will stop die method here
  "y"
end

def die_normal
  status = Proc.new {"x"}
  status.call # won't stop die_normal here
  "y"
end
```
