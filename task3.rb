aFile = File.new("a.txt", "w")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end
