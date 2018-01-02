module Foo
  def self.foo
    puts 'heyyyyoooo!'
  end
end

class Bar
  include Foo
  puts "asd"
end

Bar.new.foo # heyyyyoooo!
#Bar.foo # NoMethodError: undefined method ‘foo’ for Bar:Class

#class Baz
  #extend Foo
#end

#Baz.foo # heyyyyoooo!
#Baz.new.foo
