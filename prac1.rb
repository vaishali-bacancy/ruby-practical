puts "enter weight"
weight=gets.chomp
puts "enter height"
height=gets.chomp
weight=weight.to_i
height=height.to_i
bmi=height*703 / height**2
puts bmi
gets
