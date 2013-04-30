#  Problem number 8 on Project Euler
class SummationOfPrimes

  def initialize
    @counter = 2
    @MAX = 100000
    @primes = []
    @summation = 0
    @largest_prime = 0
  end
  
  def calculate
    while @largest_prime < @MAX && @counter < @MAX
      if is_prime?(@counter)
        @primes << @counter
        @largest_prime = @counter
        @summation += @counter
      end
      @counter += 1
    end
  end
  
  def is_prime?(n)
    @primes.each do |prime|
      return false if n%prime == 0
    end
    true
  end
  
  
  def result
    puts "The summation of primes below #{@MAX} is #{@summation}"
    # puts @primes
  end
end

start = Time.now.to_i
puts "Start time is #{start}"
t = SummationOfPrimes.new
t.calculate
t.result
puts "Time taken is #{Time.now.to_i-start}"