### Class
```ruby
def Gadget


end
```
### Methods
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


### Self
- the corrent context object
    - **outside** `class or module`: **main**
    - **inside** `class or module`: **class or module**
    - **within** a `function`: the **receiver** of function: `receiver.func_name()`