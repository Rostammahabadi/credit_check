class CreditCard
  attr_reader :limit, :last_four, :card_number

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
    @last_four = card_number.split(//).last(4).join
  end

  def is_valid?
    summed_digits = []
    sum = 0
    digits = card_number.split("")
    digits.map!.with_index do |digit, index|
      if index % 2 == 0
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
      return true
    else
      return false
    end
  end

  def last_four
    @card_number.split('').pop(4).join
  end

end
