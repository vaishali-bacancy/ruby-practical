a=[1,2,3,4,5,6,7,8,9,10,11]
n = gets.to_i
until a.length == 1
	a=a.rotate(n)
	a.pop
end
puts a

