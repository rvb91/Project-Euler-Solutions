# Project Euler Problem number 2
class Fibo
  
  def initialize
    @sum = 0
    @max = 4000000
    @f1 = 0
    @f2 = 1
    @f = 0
  end
  
  def add()
    if (@f%2==0)
      @sum = @f + @sum
    end
  end
  
  def calculate
    while @f < @max
        @f = @f1 + @f2
        add()
        @f2 = @f1
        @f1 = @f  
        puts "The current value of @f is #{@f}"
    end
    puts "The sum of fibo is #{@sum}"
  end
end


f = Fibo.new
f.calculate