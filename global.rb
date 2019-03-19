class GlobVar
  CONTS = 50
  def p1
    CONTS
  end
  def p2
    CONTS
  end
end


j = GlobVar.new
puts j.p1
puts j.p2 
