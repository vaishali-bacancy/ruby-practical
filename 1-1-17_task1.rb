class Demo1
  def display
    puts "Demo1 class"
  end
end

class Demo2 < Demo1
  def display
    puts "Demo2 class";super
  end
end
class Demo3 < Demo2
  def display
    puts "Demo3 class";super 
  end
end
Demo3.new.display()