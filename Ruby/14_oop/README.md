## Class
```ruby
def Gadget
end
```

### Constructor
```ruby
class Example 
  # constrcutor
  def initialize(name: "play badminton")
    @name = name
  end
end
```

### Attribute
```ruby
class Example 
    $x = 1   # global access
    x = 1    # const use :: to access
    @x = 1   # instance 
    @@x = 1  # static
end
```
- global  `$x`
- const `x`
- instance `@x`
- static `@@x`


### Getter & Setter
```ruby
class Exmaple 
  attr_reader :name
  attr_writer :name
  attr_accessor :name# reader and writer
end
```
### Methods
- instance method
```ruby
class Example
  # instance method
  def finish
    puts "#{self.name} has been completed." # self refers to finish's receiver
    @done = true
  end
end
```
- static method
```ruby
class Example 
  def self.count
    @@count
  end
end
```

### Access
```ruby
class Example 
  # instance method
  def finish
    puts "#{self.name} has been completed." # self refers to finish's receiver
    @done = true
  end

  public :finish
end
```

### Override and no-override
```ruby
class Parent
  def play
    puts "1"
  end
end


class Child < Parent
    def play
     puts "2"
    end
end


class Child < Parent
    alias parentPlay play # set play as old_play
    def play  # new play
        puts "2"
    end
end
```

### Add Method to Existing Class
```ruby

# add new methods to class
class String 
  def count_word
    ary = self.split(/\s+/)
    return ary.size
  end
end

str = "Just another ruby newbie"
p str.count_word
```



## Other
- check `parents`
```ruby
x = 1
y = 2
p x.class
p x.class.superclass
p x.class.ancestors
p x.methods
p x.is_a? Integer
p x.respond_to? :class # check if x has a method called .class
```

### Compare
- reference
```ruby
x == y # x.object_id == y.object_id
```