# frozen_string_literal: true

require_relative "mebeZ_gcd/version"

class GCD
  
  attr_accessor :a
  attr_accessor :b
  
  def initialize(a, b) 
    @a = a
    @b = b
    if (b > a) 
      swap()
    end
  end
  
  def swap
    temp = @a
    @a = @b
    @b = temp
  end
  
  def recurse
    r = @a % @b 
    @a = @b
    @b = r
  end
  
  def get_gcd # Apply Euclid's algorithm to get GCD
    #base case R0
    if (@a % @b == 0) 
      return @b
    end
    # else recurse
    recurse()
    return get_gcd
  end
end

gcd = GCD.new(3, 8)