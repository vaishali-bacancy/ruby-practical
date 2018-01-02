module Foo
  def self.foo
    puts 'heyyyyoooo!'
  end
end

class Bar
<<<<<<< HEAD
  puts "gshghsdgfhsgdjfh"  
=======
  include Foo
  puts "asd"
>>>>>>> d04fc12de219cd301169d72a6c88377babcf95aa
end

Bar.new.foo # heyyyyoooo!
#Bar.foo # NoMethodError: undefined method ‘foo’ for Bar:Class

#class Baz
  #extend Foo
#end

#Baz.foo # heyyyyoooo!
#Baz.new.foo
