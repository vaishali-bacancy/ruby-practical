puts "enter your choice"
puts "1 : celcious to fahrenhit"
puts "2 : fahrenhit to celcious"
choice=gets.chomp
choice=choice.to_i
case choice
when 1
	puts "celcious to fahrenhit"
	puts "enter the value of celcious"
	celcious=gets.chomp.to_f
	fahrenheit= (celcious * 9 / 5) + 32
	puts "the fahrenheit is #{fahrenheit.to_f} F"

	
when 2
	puts "fahrenhit to celcious"
	puts "enter the value of fahrenheit"
	fahrenheit=gets.chomp.to_f
	celcious= (fahrenheit -32)*5/9
	puts "the fahrenheit is #{celcious.to_i} C"

	
end
gets
