class A
  def user
    puts "Enter your name"
    name = STDIN.gets.chomp
    puts "Enter your address"
    address = STDIN.gets.chomp
    file = File.open('user_input', "a+")
    file.puts name
    file.puts address
    file.close
  end
end

r = A.new
r.user
