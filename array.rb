a = Array[1 , 2, 3 ,[4 , 5], [6 ,[7 ,8]]]
results = []
  a.each do |element|
    if element.class == Array
      element.each {|value| results << value}
    else
      results << element
    end
end
print results