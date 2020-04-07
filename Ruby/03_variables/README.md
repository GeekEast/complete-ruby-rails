### Types of Varaibles
- **local** variables: `a`
- **global** variables: `$a`
- **instance** variables: `@a`
- **class** variables: `@@a`

### Special Variables
- `__FILE__`: the path of the file
- `__LINE__`: the line of the code
- `nil`: undefined in ruby
- `self`: the corrent context object
    - **outside** `class or module`: **main**
    - **inside** `class or module`: **class or module**
    - **within** a `function`: the **receiver** of function: `receiver.func_name()`

### Interpolation
```ruby
a = 1
puts "this is interpolation #{a}"
```