x = 3

if x == 1
    print "hello world"
elseif x == 2
    print "goodbye world"
else
    print "what!"
end


x=false
print "back" if x # 0 != false, no implicit type conversion


x = 2
unless x == 1 # if not
    print "x != 1"
else
    print "x == 1"
end


x=true
print "back unless" unless x # if not


# implicit return
def print_grade(num)
    case num
    when 1..10, 11..20
        "junior"
    else
        "senior"
    end
end

p print_grade(21)


# conditional assignment
x = nil
x ||=1
puts x