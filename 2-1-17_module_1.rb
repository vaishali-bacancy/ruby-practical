module SimpleModule
  def a_method
    puts 'a_method at module'
  end
  def another_method( parameter )
    puts "Calling another method with parameter -&gt; #{parameter}"
  end
end
module AnotherModule
  def another_method
    puts 'Calling another method without a parameter'
  end
end
class SimpleClass
  #extend SimpleModule
  include AnotherModule
  def a_method( param )
    puts "a_method at class -&gt; #{param}"
  end
  another_method
end
#instance = SimpleClass.new

#instance.another_method
instance.a_method
instance.a_method 'parameter'
