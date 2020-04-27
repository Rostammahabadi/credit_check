require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'
require 'pry'

class CreditCardTest < MiniTest::Test

  def test_it_exists
    number = "5541808923795240"
    limit = 15000
    assert_instance_of CreditCard, CreditCard.new(number, limit)
  end

  def test_it_has_attributes
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "5541808923795240", credit_card.card_number
    assert_equal 15000, credit_card.limit
    assert_equal "5240", credit_card.last_four
    assert_equal true, credit_card.is_valid?
  end
end
