def palindrome?(str)
  if str == str.reverse
    true
  else
    false
  end
end

puts palindrome?("mom")
puts palindrome?("papa")
