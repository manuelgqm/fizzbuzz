FIZZ_NUMBER = 3
BUZZ_NUMBER = 5
MAX_NUMBER = 100

class FizzbuzzRules
  def fizzbuzz(arg)
    fizz = fizz(arg)
    buzz = buzz(arg)
    return fizz.to_s + buzz.to_s if fizz || buzz
    arg
  end

  def fizz(arg)
    "Fizz" if arg % FIZZ_NUMBER == 0 || arg.to_s.include?(FIZZ_NUMBER.to_s)
  end

  def buzz(arg)
    "Buzz" if arg % BUZZ_NUMBER == 0 || arg.to_s.include?(BUZZ_NUMBER.to_s)
  end
end

class Fizzbuzz < FizzbuzzRules
  attr_reader :numbers

  def initialize
    @numbers = (0..MAX_NUMBER).to_a
    @numbers = @numbers.map { |number| fizzbuzz(number) }
  end

  def to_s
    @numbers.each { |number| puts number }
  end

end

fizzbuzz = Fizzbuzz.new
fizzbuzz.to_s
