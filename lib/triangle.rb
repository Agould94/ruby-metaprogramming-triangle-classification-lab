class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
  end

  def kind
    if @a<= 0 || @b<= 0 || @c <= 0 || @a+@b <= @c || @a+@c <= @b || @b+@c <= @a
      begin
        raise TriangleError
      end
    elsif @a == @b && @b == @c
      :equilateral
    elsif
      @a != @b && @b != @c && @a != @c
      :scalene
    elsif
      @a == @b || @a == @c || @b == @c && @a != @b || @a != @c || @b != @c
      :isosceles
    elsif @a || @b || @c == 0
        #begin
          raise TriangleError
        # rescue TriangleError => error 
        #   puts error.message
        # end
    end
  end

  #if @a || @b || @c <= 0 || @a+@b < @c || @a+@c < @b

  class TriangleError < StandardError
    def message
      "illigal triangle"
    end
  end
end
