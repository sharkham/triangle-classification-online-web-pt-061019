class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def real_triangle?
    if self.a <= 0 || self.b <= 0 || self.c <= 0
      raise TriangleError
    elsif self.a + self.b <= self.c || self.a + self.c <= self.b || self.b + self.c <= self.a
      raise TriangleError
    else
      true
    end
  end

  def kind
    real_triangle?
    if self.a == self.b && self.b == self.c
      :equilateral
    elsif self.a == self.b || self.a == self.c || self.b == self.c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end
