class Triangle

  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if self.s1 <= 0 || self.s2 <= 0 || self.s3 <=0
      raise TriangleError
    elsif [self.s1, self.s2].sum <= self.s3 || [self.s2, self.s3].sum <= self.s1 || [self.s1, self.s3].sum <= self.s2
      raise TriangleError
    else
      if self.s1 == self.s2 && self.s2 == self.s3 && self.s1 == self.s3
        :equilateral
      elsif self.s1 == self.s2 || self.s2 == self.s3 || self.s1 == self.s3
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError

  end

end
