a = String.new

a= ""/''

a = "Hello world"


Write a program to check whether given string is palindrome or not.

def palindrome?(str)
  rstr = ""
  str.each_char do | i |
    rstr = i + rstr
  end
  rstr == str ? "Yes palindrome" : "Not palindrome"
end
palindrome?("hello")


"".to_me?
  "Hello you won!"

class String
  def to_me?
     "Hello you won!"
  end
end
