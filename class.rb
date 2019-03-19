class Var
  @@hello = "Class var"
  def p1
    "Access from p1 " + @@hello 
  end
  def p2
    "Access from p2 " + @@hello
  end
end


v = Var.new
puts v.p1
puts v.p2
