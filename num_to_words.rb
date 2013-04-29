# Problem number 17 on Project Euler

require 'rubygems'
require 'humanize'


class NumToWords
  def initialize
    @num = 0
    @sum = 0
    @current_string 
  end
  
  def count
    (1..1000).each do |n|
      @current_string = n.humanize
      puts @current_string
      puts clean_string
      @sum = @sum + @current_string.length
    end
    
    puts "The Sum of the total number of chracters used is #{@sum}"
  end
  
  def clean_string
    #clean out all the extra chracters such as , -  "spaces"  
    @current_string.gsub!(/[-, ]/, '')
  end
end


n = NumToWords.new
n.count
