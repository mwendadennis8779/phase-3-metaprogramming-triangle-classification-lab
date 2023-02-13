class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    total1 = self.side1 + self.side2
    total2 = self.side2 + self.side3
    total3 = self.side3 + self.side1

    if(self.side1 <=0 || self.side2 <= 0 || self.side3 <=0 || total1 <=0 || total2 <=0 || total3 <=0)
      raise TriangleError


    elsif(self.side1 == self.side2 && self.side2 == self.side3 && self.side1 != 0)
      :equilateral
    elsif (self.side1==self.side2 || self.side1==self.side3 || self.side2 == self.side3)
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "There are not valid sizes"
    end
  end


end
