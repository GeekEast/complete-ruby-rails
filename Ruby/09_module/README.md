### Module
- Define a namespace to prevent anme clashes
- Implement mixin facility
```ruby
module Trig
    PI = 3.1415926
    def Trig.sin()
        puts 'sins'
    end
end
```
- `Pitfall`
```ruby
module Trig
    PI = 3.1415926
    def sin()  # this is wrong because module is same level with class but without instance method
        puts 'sins'
    end
end

Trig.sin
```

### Import a Module
- using `require` keyword
```ruby
$LOAD_PATH << '.' # necessary: search path is current folder
require 'trig.rb'

class Test
    def log
        puts Trig::PI
    end
end

o1 = Test.new
o1.log
```


### Mixin
- `include` 
```ruby
$LOAD_PATH << '.'
require 'trig.rb'

class Test
    include Trig 
    def log
        puts PI # same as puts Trig::PI !!!
    end
end

o1 = Test.new
o1.log

```

