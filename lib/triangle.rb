class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def valid?
    validity_tests = [a + b > c, a + c > b, b + c > a]
    [a,b,c].each {|side| validity_tests << (side > 0)}
    if validity_tests.include?(false)
      raise TriangleError
    end
  end

  def type_check
    if a == b && a == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def kind
    valid?
    type_check
  end



  class TriangleError < StandardError
  end

end
