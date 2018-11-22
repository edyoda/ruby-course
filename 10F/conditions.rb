if condition

if condition
  logic # if the condition is true
end

OR

if condition
  logic # if the condition is true
else
  logic # if the condition is false
end


if condition1
  logic # if the condition1 is true
elsif condition2
  logic # if the condition1 is false and condition2 is true
elsif condition3
  logic # if the condition1 and 2 is false and condition3 is true
else
  logic # if all above conditions are false
end


unless condition
  logic # if the condition is false
else
  logic # if the condition is true
end


case varaible
when condition1
  logic
when condition2
  logic
else
    no logic
  end



while condition
  logic # if the condition is true
end

a = 10
while a < 20
  a += 1
  puts "Hello"
end


until condition
  logic #if the condition is false
end
