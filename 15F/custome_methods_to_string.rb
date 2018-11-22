class String
  def to_me?
    true
  end
  def no_not_me?
    false
  end
end

p "".methods.grep(/me\?$/)
