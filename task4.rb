aFile = File.new("a.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
   aFile.close
   aFile = File.new("a.txt", "r+")
   arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]
else
   puts "Unable to open file!"
end