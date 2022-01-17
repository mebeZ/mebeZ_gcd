# frozen_string_literal: true

require "test_helper"

class TestMebeZGcd < Minitest::Test
  def test_init
    t1 = GCD.new(8, 3)
    assert t1.a > t1.b
  end
  
  def test_swap 
    t2 = GCD.new(3, 8)
    assert t2.a > t2.b
  end
  
  def test_gcd 
    t3 = GCD.new(27, 29) 
    assert t3.get_gcd == 1
  end
end
