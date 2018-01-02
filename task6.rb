aFile = File.new("a.txt", "r+")
if aFile
   aFile.syswrite("nnnnnnnnnnnnnnnnnnn")
   aFile.close
   aFile = File.new("a.txt", "r+")
   IO.foreach("a.txt"){|v| puts v}
else
   puts "Unable to open file!"
end