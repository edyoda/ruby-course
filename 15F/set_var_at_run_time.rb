class A
end

a = A.new
a.instance_variable_set("@name", 'Hello')
puts a.instance_variable_get("@name")

def a.p1
  @name
end

puts a.p1
