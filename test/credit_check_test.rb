require './lib/credit_check'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class CreditCheckTest < MiniTest::Test

  def test_it_can_split
    card_number = "5541808923795240"
    expected = ["5", "5", "4", "1", "8", "0", "8", "9", "2", "3", "7", "9", "5", "2", "4", "0"]
    assert_equal expected, split(card_number)
  end

  def test_it_can_double_every_other
    card_number = ["5", "5", "4", "1", "8", "0", "8", "9", "2", "3", "7", "9", "5", "2", "4", "0"]
    expected = [10, 5, 8, 1, 16, 0, 16, 9, 4, 3, 14, 9, 10, 2, 8, 0]
    assert_equal expected, double_ever_other(card_number)
  end

  def test_it_can_sum_digits
    card_number = [10, 5, 8, 1, 16, 0, 16, 9, 4, 3, 14, 9, 10, 2, 8, 0]
    expected = [1, 5, 8, 1, 7, 0, 7, 9, 4, 3, 5, 9, 1, 2, 8, 0]
    assert_equal expected, sum_of_digits(card_number)
  end

  def test_it_can_sum_of_sum_of_digits
    sum_digit = [1, 5, 8, 1, 7, 0, 7, 9, 4, 3, 5, 9, 1, 2, 8, 0]
    expected = 70
    assert_equal expected, sum_of_sum_of_digits(sum_digit)
  end

  def test_it_can_multiply_by_nine
    number = 9
    assert_equal 81, multiply_by_nine(number)
  end

  def test_it_can_modulo_ten
    number = 603
    assert_equal 3, modulo_ten(number)
  end

end
