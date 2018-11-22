def find(str)
  if str.match(/^(\d{2,3}.\d{2,3}.\d{1,3}.\d{1,3})\s(Safari|Chrome)\sUSA$/i)
    puts "#{$1} and #{$2}"
  end
end


File.read('log.txt').split("\n").each do | each_line |
 find(each_line)
end
