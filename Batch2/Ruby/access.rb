class A
  private
  attr_accessor :name
end

object.method(args)

class A
  attr_reader :name
  attr_writer :name
end

class A
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
