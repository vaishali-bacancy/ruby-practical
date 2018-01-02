module Test1
  class Abc
    def abc_method
      puts "abc class method"
    end
  end
  class Xyz < Abc
    def xyz_method
      puts "xyz class method"
    end
  end
end
module Test2 extend Test1
  class Pqr
    def pqr_method
      puts "pqr class method"
    end
  end
  class Tuv
    def tuv_method
      puts "tuv_class method"
    end
  end
end
Abc.new.abc_method
