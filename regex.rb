def find_ips
  File.open("find_ipt.txt", "r").collect {|a| a.chomp.strip}.each do | each_line |
    if each_line.match(/(^\d{3}.\d{1,3}.\d{1,3}.\d{1,3})\sSafari\sIndia.*443$/i)
       puts $1
    end
  end
end

find_ips



#string =~ /regular_expression/
