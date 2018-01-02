marks={stu1:{sub1:25, sub2:35, sub3:48, total:100},
  stu2:{sub1:52, sub2:35, sub3:48, total:100},
  stu3:{sub1:78, sub2:63, sub3:56, total:100},
  stu4:{sub1:93, sub2:89, sub3:98, total:100},
  stu5:{sub1:86, sub2:79, sub3:82, total:100},
  stu6:{sub1:58, sub2:63, sub3:70, total:100},
  stu7:{sub1:57, sub2:36, sub3:45, total:100}
  }
a=Hash.new
results=Hash.new
total=0
per=0
marks.each do |k,v|
  v.each do |key,values|
    a=v.values.take(3).to_a
	end
	results={k=>{"total"=>a.sum,"per"=>(a.sum/3.to_f).round(2)}}.merge(results)
end
reversed_h = Hash[results.to_a.reverse]
puts reversed_h

#hiren.bhalani@bacancytechnology.com
#HirenBhalani-Bacancy
