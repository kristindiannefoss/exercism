require 'pry'

class Raindrops
  VERSION = 1

  def self.convert(num)
    raindrops = ""
    if num % 3 == 0
      raindrops << "Pling"
    end
    if num % 5 == 0
      raindrops << "Plang"
    end
    if num % 7 == 0
      raindrops << "Plong"
    else
      if raindrops.length == 0
        num.to_s
      else
        raindrops
      end
    end
  end
end
