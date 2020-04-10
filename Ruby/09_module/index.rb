
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





