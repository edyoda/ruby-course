# file read and write operation 
=begin
  File a class 
  open is a method which supprts both read and write 
  read  # only for read 
  write # support only write
=end

=begin
Mode

w # opens a file into write mode
r  # opens a file into read mode 
rw  # read and write mode  
a+  # append into file
wb  # write binary
rb  # read binary 

File.open(file_path , mode ) do | object |
  object.puts 
  object.write 
end
=end

#1)
loop do 
  puts "Enter your name"
  name = STDIN.gets.chomp
  puts "Enter your address"
  address = STDIN.gets.chomp
  File.open("user_data.txt", "a+") do | file |
    file.puts("#{name}  #{address}")
  end
  puts "If done type yes to terminate, otherwise anything to continue"
  ob = STDIN.gets.chomp
  if ob.match(/yes/i)
    break;
  end 
end


=begin
#2)
File.open(file_name, "w/a+")  {| foo | foo.write}

#3)
file = File.open(file_name, "w/a+")
file.puts "Content"
file.close

=end
