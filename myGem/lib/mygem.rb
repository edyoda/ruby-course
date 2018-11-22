class MyGem
  def sum(*args)
    x = *args
    return x.map {| i | i.to_i}.inject(:+)
  end
end
