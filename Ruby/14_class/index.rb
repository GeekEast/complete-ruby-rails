class Gadget
  attr_accessor :username, :sports # combine reader and writer
  attr_reader :password
  attr_writer :id

  def initialize
    @username = ""
    @password = "123"
    @id = 1
    @sports = []
  end

  # override
  def to_s
    "info method"
  end

  private # protect

  def log_self
    p self
  end

  def play
    p "play"
  end

  # define access at the end of class
  private :log_self
  protected :play
end

class Phone < Gadget
  def play
  end
end

x = Gadget.new
x.play

y = Phone.new
y.play
