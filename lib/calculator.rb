# rbs_inline: enabled

class Calculator
  # @rbs (Integer a, Integer b) -> Integer
  def add(a, b)
    a + b
  end

  # @rbs (Integer a, Integer b) -> Integer
  def subtract(a, b)
    a - b
  end

  # @rbs (Integer a, Integer b) -> Integer
  def multiply(a, b)
    a * b
  end

  # @rbs (Integer a, Integer b) -> Float
  def divide(a, b)
    raise ArgumentError, "ゼロ除算はできません" if b == 0
    a.to_f / b.to_f
  end
end