### Create
- same type
```ruby
p [1,2,3,4]
```
- different type
```ruby
p [1,2,3,'4']
```
- batch
```ruby
p Array.new(10,2) # create 10 2s
p Array.new(2,[1,2,3]) # create 2 [1,2,3]s
```

### Access
- single
```ruby
arr = [1,2,3]
p arr[0]
p arr[-1]
p arr.fetch(5) # throw errors
p arr.fetch(5,nil) # return nil
p arr.fetch(5,'fallback') # return fallback
p arr.values.at(0, 3, 3, 100) # no errors: return nil
```
- batch
```ruby
arr = [1,2,3,4]
p arr[0,1] #[0,1)
p arr[0..1] #[0,1]
p arr[0...1] #[0,1)
p arr[0...100] # return [1,2,3,4]
p arr.slice(3)
p arr.slice(3,5) # return [4]
p arr.slice(0..1)
p arr.slice(0...1)
```
- Head and Tail
```ruby
arr = [1,2,3,4]
p arr.first
p arr.last
p arr.first(2)
p arr.last(2)
```

### Update
- exist
```ruby
arr = [1,2,3,4]
arr[0] = 0
```
- non-exist
```ruby
arr = [1,2,3,4]
arr[5] = 5 # return [1,2,3,4,nil,5]
```
- delete
```ruby
arr = [1,2,3,4]
arr[0..1] = 1 # return [1,3,4]
```
### Empty && Null Check
- empty
```ruby
arr = [1,2,3]
p arr.length
p arr.size
p arr.empty?
```
- null
```ruby
p arr.nil?
```

### Count Element
```ruby
arr = [1,2,3,1]
p arr.count(1) # return 2
```


### Insert
```ruby
arr = [1,2,3]
p arr.insert(0,0)
```

### Add & Remove From Head or Tail
- To Head
```ruby
arr = [1,2,3]
p arr.unshift(0)
```
- From Head
```ruby
arr = [1,2,3]
p arr.shift
p arr.shift(2)
```
- To Tail
```ruby
arr = [1,2,3]
p arr.push(4)
p arr << 4
p arr << 4 << 5
```
- From Tail
```ruby
arr = [1,2,3,4]
p arr.pop
p arr.pop(2)
```


### Compare Array
- Value 
```ruby
a = [1,2,3]
b = [1,2,3]
p a == b # return tue
p a === b # same as ==
```
- Type & Value
```ruby
a = [1,2,3]
b = [1,2,3]
p a.eql?(b)
```
- Memeory Address
```ruby
a = [1,2,3]
b = [1,2,3]
p a.equal?(b) # false
```
- Number as Result
```ruby
a = [1,2,3]
b = [1,2]
c = [1,2,3]
p a <=> b # 1
p b <=> a # -1
p a <=> c # 0
```

### Check Element Exist
```ruby
arr = [1,2,3]
# p 3.in?(arr) !!not right, 3 has not in method
p arr.include?(3)
```


### Check Type
```ruby
p [1,2,3].is_a? Array # a doesn't represent array here
```

### Range to Array
```ruby
p (1..5).to_a
```