puts "enter the numbers"
num=gets.chomp.to_i
puts "total number is: #{num}"
array=Array.new(num)
even=0
odd=0
for i in 1..num
	array[i]=gets.chomp.to_i
	if(array[i]%2==0)
		even+=1
	else
		odd+=1
	end
end
puts "total even number #{even}"
puts "total odd number #{odd}" 
gets