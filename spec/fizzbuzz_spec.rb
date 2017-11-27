require 'fizzbuzz'

describe 'Fizz Buzz' do
  context 'conversion returns' do
    before(:each) do
      @rules = FizzbuzzRules.new
    end

    it "Fizz if number is divisible by #{FIZZ_NUMBER} or if it has a #{FIZZ_NUMBER} in it" do
      expect(@rules.fizzbuzz(FIZZ_NUMBER)).to eq("Fizz")
      expect(@rules.fizzbuzz(FIZZ_NUMBER*2)).to eq("Fizz")
      expect(@rules.fizzbuzz(FIZZ_NUMBER*3)).to eq("Fizz")
      expect(@rules.fizzbuzz(13)).to eq("Fizz")
      expect(@rules.fizzbuzz(31)).to eq("Fizz")
      expect(@rules.fizzbuzz(32)).to eq("Fizz")
    end

    it "Buzz if number is divisible by #{BUZZ_NUMBER} or if it has a #{BUZZ_NUMBER} in it" do
      expect(@rules.fizzbuzz(BUZZ_NUMBER)).to eq("Buzz")
      expect(@rules.fizzbuzz(BUZZ_NUMBER*2)).to eq("Buzz")
    end

    it "FizzBuzz if number is divisible by #{FIZZ_NUMBER} and #{BUZZ_NUMBER}" do
      expect(@rules.fizzbuzz(FIZZ_NUMBER*BUZZ_NUMBER)).to eq("FizzBuzz")
      expect(@rules.fizzbuzz(FIZZ_NUMBER*BUZZ_NUMBER*2)).to eq("FizzBuzz")
      expect(@rules.fizzbuzz(52)).to eq("Buzz")
      expect(@rules.fizzbuzz(59)).to eq("Buzz")
    end

    it "Number if number is not dibisible by #{FIZZ_NUMBER} or #{BUZZ_NUMBER}" do
      expect(@rules.fizzbuzz(1)).to eq(1)
      expect(@rules.fizzbuzz(2)).to eq(2)
      expect(@rules.fizzbuzz(44)).to eq(44)
    end

  end

  it "has a list of numbers from 1 to #{MAX_NUMBER}" do
    fizzbuzz = Fizzbuzz.new
    expect(fizzbuzz.numbers.size).to eq(MAX_NUMBER + 1)
    expect(fizzbuzz.numbers[4]).to eq(4)
  end

  it "numbers are converted to fizzbuzz" do
    fizzbuzz = Fizzbuzz.new

    expect(fizzbuzz.numbers[1]).to eq(1)
    expect(fizzbuzz.numbers[FIZZ_NUMBER]).to eq("Fizz")
    expect(fizzbuzz.numbers[BUZZ_NUMBER]).to eq("Buzz")
    expect(fizzbuzz.numbers[FIZZ_NUMBER*BUZZ_NUMBER]).to eq("FizzBuzz")
  end
end
