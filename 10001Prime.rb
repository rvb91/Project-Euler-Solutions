#  Problem number 7 on Project Euler
class TenThousandOnePrime

  def initialize
    @start = 2
    @MAX =  10001
    @primes = []
  end
  
  def calculate
    while @primes.length < @MAX
      
      if is_prime?(@start)
        @primes << @start
      end
      @start += 1
    end
  end
  
  def is_prime?(n)
    @primes.each do |prime|
      return false if n%prime == 0
    end
    true
  end
  
  def result
    puts "The #{@MAX} prime is #{@primes[-1]}"
  end
end

t = TenThousandOnePrime.new
t.calculate
t.result