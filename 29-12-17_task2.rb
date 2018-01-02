class Filenathimalti < StandardError
  def message
    "File delete thai gai 6"
  end
end
begin
  File.open("sss.txt","r")
  rescue Exception 
  begin
    raise Filenathimalti 
	rescue Filenathimalti => e
    puts e.message 
  end
end 