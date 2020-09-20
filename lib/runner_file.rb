require './lib/credit_card'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

puts "Enter a credit card number for validation"
credit_card = gets.chomp
puts "Enter the credit cards limit"
limit = gets.chomp

new_credit_card = CreditCard.new(credit_card, limit)

puts "The last four of the card are #{new_credit_card.last_four}"
puts "Valid credit card: #{new_credit_card.is_valid?}"
