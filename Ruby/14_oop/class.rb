
# create an object
ary = Array.new # generate an object from a class
p ary # []


# Get the class (Type) of an object
p ary.class
p ary.instance_of?(Array)
p ary.is_a?(Array)

# Inheritance is-a relationship
# BasicObject is the super fatuer
class Item
  # global variable
  $glo = 1
  # constant
  Version = "1.0" # constant get by ::
  # static variable
  @@count = 0 # class variable

  # setter, getter and together
  attr_reader :name
  attr_reader :done
  attr_writer :name
  attr_writer  :done
  # attr_accessor :name, :done # reader and writer

  # constrcutor
  def initialize(name: "play badminton")
    @name = name
    @done = false
  end

  # instance method
  def finish
    puts "#{self.name} has been completed." # self refers to finish's receiver
    @done = true
  end


  # static method
  # def Item.hello
  #   puts "Hello Item"
  # end
  def self.hello
    puts "Hello Item"
  end
  def self.count
    @@count
  end

  # private :finish
  # protected :finish
  public :finish
end


item = Item.new
# test 1
p item.name
p item.done
item.name = "Play basketball"
item.done = true
p item.name
p item.done

# test 2
item.finish


# test 3
puts Item.count
puts $glo
puts Item::Version



# add new methods to class
class String 
  def count_word
    ary = self.split(/\s+/)
    return ary.size
  end
end

str = "Just another ruby newbie"
p str.count_word


class Parent
  def play
    puts "1"
  end
end

class Child < Parent
  alias old_play play # set play as old_play
  def play  # new
    puts "2"
  end
end

x = Child.new
x.play
x.old_play