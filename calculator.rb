class Calculator
attr_accessor :total
  
  def calculate(&block)
    self.total = 0
    instance_eval(&block)
    total
  end

  def add(x)
    self.total += x
  end

  def subtract(x)
    self.total -= x
  end

  def multiply(x)
    self.total *= x
  end

  def divide(x)
    self.total /= x
  end

end