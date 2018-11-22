def email(str)
  if str =~ /^[^!-)|_]\D.*@(gmail|yahoo).(in|com)/
    puts "valid email - #{str}"
  end
end

email("hello@gmail.com")
email("_hello@gmail.com")
email("$hello@gmail.com")
