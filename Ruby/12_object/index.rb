a = [1,2,3]
b = [1,2,3]

p a.object_id
p b.object_id


p a === b
p a == b
p a.eql?(b)
p a.equal?(b)

b = a 

p a.object_id 
p b.object_id

p a === b
p a == b
p a.eql?(b)
p a.equal?(b)




