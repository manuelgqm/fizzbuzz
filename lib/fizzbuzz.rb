class FizzBuzz
  attr_reader :rules

  def initialize(size)
    @list = (1..size)
    @rules = FizzbuzzRules.new()
  end

  def values
    @list.map { |item| convert(item) }
  end

  def convert(number)
    rules = FizzbuzzRules.new()
    rules.number = number
    return rules.fizzbuzz if rules.fizzbuzz?
    return rules.fizz if rules.fizz?
    return rules.buzz if rules.buzz?
    number
  end

end

class FizzbuzzRules
  attr_reader :fizz, :buzz, :fizzbuzz, :fizz_multiple, :buzz_multiple
  attr_accessor :number
  def initialize(fizz = "fizz", buzz = "buzz", fizz_multiple = 3, buzz_multiple = 5)
    @fizz = fizz
    @buzz = buzz
    @fizzbuzz = fizz + buzz
    @fizz_multiple = fizz_multiple
    @buzz_multiple = buzz_multiple
  end

  def fizz?
    number % @fizz_multiple == 0 || number.to_s.include?(@fizz_multiple.to_s)
  end

  def buzz?
    number % @buzz_multiple == 0
  end

  def fizzbuzz?
    fizz? && buzz?
  end

end