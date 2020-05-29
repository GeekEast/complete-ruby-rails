### Where to find lib?
- [Ruby Gems](https://rubygems.org/)

### Common Commands
- interactive mode
```sh
irb # get into interactive mode
```
- methods
```ruby
"123".length # return 3
"xxx".upcase # return XXX
"XXX".downcase # return xxx
"1".to_i # return integer as 1
"abc".inspect # equal to p "abc"
1.odd? # check the integer is odd or not
1.even? # check the integer i even or not
1.next # return 2
1.class # got the blueprint of a variable

gets # get user input
gets.chomp # get user input and remove space in both sides
[1,2,3].is_a? Array # class check, support superclass check
```

### Wired === 
- Different implementation with different class
```ruby
p (1..3) === 2 # 2 is in range (1..3)
```

### Self
- the **current context object**
    - **outside** `class or module`: **main**
    - **inside** `class or module`: **class or module**
    - **within** a `function`: the **receiver** of function: `receiver.func_name()`


