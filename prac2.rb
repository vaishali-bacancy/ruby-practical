puts "enter width"
width = gets.chomp
puts "enter length"
length = gets.chomp
width=width.to_i
length=length.to_i
total_area=length*width
total_block= total_area / 144
puts total_block
total_cost=total_block * 32
puts "total minimum cost is #{total_cost}"
gets

