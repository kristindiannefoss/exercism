require 'pry'

class Squares
  VERSION = 2
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sums_array = []
    @num.downto(0) {|number| sums_array << number}
    (sums_array.reduce(:+)) ** 2
  end

  def sum_of_squares
    squares_array = []
    @num.downto(0) {|number| squares_array << number ** 2 }
    squares_array.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

end
