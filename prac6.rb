puts "enter number:"
num=gets.chomp.to_i
city=Array.new(num)
temp=Array.new(num)
for i in 0...num
  puts "enter city:"
  city[i]=gets.chomp
  puts "enter temparature:"
  temp[i]=gets.chomp.to_i
end
for i in 0...num
  puts "for #{city[i]} temparature is #{temp[i]}"
end
temp.each do |t|
 i=0
 temp.each do |b|
   if b > temp[i+1]
     temp[i],temp[i+1] = temp[i+1],temp[i]
	 city[i],city[i+1] = city[i+1],city[i]
   end
   i+=1 if i < temp.size-2
 end
end
puts "sorted list........"
 for i in 0...num
   puts "for #{city[i]} temparature is #{temp[i]}"
 end
gets  