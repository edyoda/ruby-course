f= File.open("nginx.log", "r")
file_data = f.read().split("\n")
file_data.each do | i |
  if i.match(/^([0-9]{2}:[0-9]{2}:[0-9]{2})\s(\w+)\s(\w+)\s(\d{2,3}.\d{2,3}.\d{1,3}.\d{1,3})\s\w+$/)
    puts $3 + ' ' + $4
  end
end

if str ~= /pattenr/
   logic
end
