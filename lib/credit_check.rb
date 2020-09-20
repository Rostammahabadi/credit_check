require 'pry'


# Your Luhn Algorithm Here
summed_digits = []
sum = 0
digits = card_number.split("")
digits.map!.with_index do |digit, index|
  if index.even?
    digit.to_i * 2
  else
    digit.to_i
  end
end

digits.each_with_index do |digit, index|
  if index % 2 == 0
    if digit > 9
      summed_digits << digit.digits.sum
    elsif digit < 9
      summed_digits << digit
    end
  elsif index % 2 != 0
    summed_digits << digit
  end
end
sum_digits = summed_digits.sum
multiplied = sum_digits*9
result = multiplied % 10

if result == 0
  puts "The number #{card_number} is valid!"
else
  puts "The number #{card_number} is invalid!"
end

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
