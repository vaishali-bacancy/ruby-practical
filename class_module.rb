module M1
  def method_1
    puts "M1 Method 1"
  end
  def self.method_1
    puts "M1 Method 2"
  end
end

module M2
  def method_1
    super
    puts "M2 Method 1"
  end
end

class Abc
  extend M1
  # include M1
  def method_1
    # M1.method_1
    super
    puts "Abc M1"
  end
end

class Xyz < Abc
  class << self
  end
 include M2
end

Abc.new.method_1
# Abc.new.method_1
Xyz.new.method_1
