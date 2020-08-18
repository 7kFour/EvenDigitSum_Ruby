# frozen_string_literal: true

def get_even_digit_sum(number)
  return -1 if number.negative?

  sum = 0

  while number > 9
    last = number % 10
    sum += last if last.even?

    number /= 10

    sum += number if number < 10 && number.even?
  end

  sum

end

p get_even_digit_sum(252)
p get_even_digit_sum(1_234_567_890)
p get_even_digit_sum(-22)
