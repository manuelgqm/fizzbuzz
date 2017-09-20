class FizzBuzz
  FIZZ = 'fizz'
  BUZZ = 'buzz'
  FIZZBUZZ = FIZZ + BUZZ
  FIZZ_MULTIPLE = 3
  BUZZ_MULTIPLE = 5

  def values
    (1..100).map { |item| convert(item) }
  end

  def convert(number)
    return FIZZBUZZ if fizzbuzz?(number)
    return FIZZ if fizz?(number)
    return BUZZ if buzz?(number)
    number
  end

  def fizz?(number)
    number%FIZZ_MULTIPLE == 0 || number.to_s.include?(FIZZ_MULTIPLE.to_s)
  end

  def buzz?(number)
    number%BUZZ_MULTIPLE == 0
  end

  def fizzbuzz?(number)
    fizz?(number) && buzz?(number)
  end

end

