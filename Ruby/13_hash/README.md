### Hash
- key can be any type, but has to be unique
- key can be any type
- don't sort key or value, it's unnecessary
- create a hash
```ruby
person = {
    name: "James",
    age: 21
}
p person[:sport] # default return nil

```
- create with default value
```ruby
person = Hash.new(0)
p person[1]
person.default = 1 # modify default value
p person [1]
```

### Symbol
- Just light-weight, immutable placeholder, like a string
- very commonly used as hash-key, because they take less memory
```ruby
p :name.class # symbol
person = {
    :name => "James",
    :age => 21,
    :handsome => true,
    :language => ["Ruby","Python", "JavaScript"]
}
person[:name]
```
- conver symbol to string
```ruby
p :name
p :name.to_s
p :name.to_s.to_sym
```

### Syntax Sugar to declare Hash
```ruby
person = {
    name: "James",
    age: 21,
    handsome: true,
    language: ["Ruby", "Python", "JavaScript"]
}
p person
p person[:name]
```

### fetch
```ruby
h = { "a" => 100, "b" => 200 }
h.fetch("a")                            #=> 100
h.fetch("z", "go fish")                 #=> "go fish"
h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"
```


### Update
```ruby
x  = {name: "James",age:"21"}
x[:name] = "Jane" # x.store(:name, "Jane")
x[:sport] = "Badminton"
```


### Length
```ruby
p person.length
p person.size
p person.empty?
```

### Iteration
- key-first
```ruby
attributes = {
    name: "James",
    age: 21
}
attributes.each do |k,v|
    p k
    p v
end
# [key,value]
attributes.each do |e|
    p e
end
```
- each_key and each_value
```ruby
attributes.each_key { |key| p key }
attributes.each_value { |value| p value }
```
- keys and values
```ruby
attributes.keys
attributes.values
```


### From/To Array
```ruby
arr = person.to_a
p arr
p arr.to_h
```


### Sort
- by key asc
```ruby
abc = {
  a: 1,
  z: 3,
  b: 2,
}

p abc.sort
```
- by key desc
```ruby
abc = {
  a: 1,
  z: 3,
  b: 2,
}

p abc.sort.reverse
```
- by value 
```ruby
abc = {
  a: 1,
  z: 2,
  b: 3,
}

p abc.sort_by { |k, v| v } # you can do reverse as well
```


### Delete
```ruby
abc = {
  a: 1,
  z: 2,
  b: 3,
}

abc.delete(:a)
p abc
```


### Existence of key and value
```ruby
abc = {
  a: 1,
  z: 2,
  b: 3,
}

p abc.key?(:a)
p abc.value?(2)
```


### Select & Reject
```ruby
abc = {
  a: 1,
  z: 2,
  b: 3,
}
p abc.select { |k, v| v > 2 }
p abc.reject { |k, v| v > 2 }
p abc
```


### Combine
```ruby
abc = {
  a: 1,
  z: 2,
  b: 3,
}

defe = {
  d: 4,
  e: 5,
  f: 6,
}

p abc.merge(defe)
```

