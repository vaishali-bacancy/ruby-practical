class Product
  $a=Hash.new
  def product_detils
    puts "....PRODUCT LIST...."
    puts "No.    P_name"      
    puts "1      AC"             
    puts "2      Computer"       
    puts "3      Keyboard"       
    puts "4      Mouse"          
    puts "5      Printer"        
    puts "6      Scanner"        
    puts "7      refrigerator"  
    puts "8      Oven"           
    puts "9      LCD(TV)"        
    puts "10     Speaker"  
    puts "11     Calculate the bill"	
  end
  def product_select
    print "enter your choice : "    
    choice=gets.chomp.to_i
	if choice==11
	  product_choice(11,0)
	else
	print "enter your quantity : "
	quantity=gets.chomp.to_i
	product_choice(choice,quantity)
    product_detils
    product_select
	end
  end 
  def product_choice(c,q)
  qua=q
  choice=c
    case choice
	  when 1
	    product_value(1,"AC",25000,28,qua)
      when 2
		product_value(2,"Computer",20000,20,qua)
	  when 3
	    product_value(3,"Keyboard",800,12,qua)
	  when 4
		product_value(4,"Mouse",300,15,qua)
	  when 5
	    product_value(5,"Printer",4200,18,qua)
	  when 6
	   product_value(6,"Scanner",7500,20,qua)
	  when 7
	    product_value(7,"refrigerator",13500,10,qua)
	  when 8
	    product_value(8,"Oven",18000,18,qua)
	  when 9
	    product_value(9,"LCD(TV)",28000,15,qua)
	  when 10
	    product_value(10,"Speaker",2500,10,qua)
	  when 11
	    generatebill
	  else
	    exit	    
	end	  
  end
  def product_value(product_no,p_name,price,gst,quantity)
	total=quantity*price
	gst_count=total*gst/100
	gt=total+gst_count
	
	#product_list=Hash.new
	product_list={"product_no" => product_no,
	              "product_name" => p_name,
				  "price per product" => price,
				  "quantity"=>quantity,
				  "total"=> total,
				  "gst"=>gst,
				  "gst_count" => gst_count,
				  "grand total" => gt
				 
				  }
	$a<<product_list
	
  end
  def generatebill
    i=0
	sum=0
    puts "No         p_name         price         quantity         gst        total"
    $a.length.times.each do |i|
      puts " #{$a[i]["product_no"]}\t#{$a[i]["product_name"]}\t#{$a[i]["price per product"]}\t#{$a[i]["quantity"]}\t#{$a[i]["gst"]}\t#{$a[i]["total"]}\t#{$a[i]["grand total"]}"
	  sum=$a[i]["grand total"]+sum
	end
		puts "GRAND TOTAL #{sum}"
  end
end
print "enter customer name : "
customer=gets.chomp
Product.new.product_detils
Product.new.product_select


  

	
  


#Product.new.product_detils

