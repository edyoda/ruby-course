class Calc
  def sum
    op = ARGV.pop
    ARGV.map {|a| a.to_i}.inject(op.to_sym)
  end
end


t = Calc.new
puts t.sum
