require "fizzbuzz"

describe 'Fizz buzz' do
  describe 'list of 100 numbers' do
    before(:each) do
      @fizzbuzz = FizzBuzz.new(100)
    end

    it 'returns a list of 100 numbers' do
      expect(@fizzbuzz.values.length).to eq(100)
    end

    it 'returns fizz if number is divisible by fizz' do
      rules = @fizzbuzz.rules
      expect(@fizzbuzz.convert(rules.fizz_multiple*1)).to eq(rules.fizz)
      expect(@fizzbuzz.convert(rules.fizz_multiple*2)).to eq(rules.fizz)
    end

    it 'returns buzz if number is divisible by buzz' do
      rules = @fizzbuzz.rules
      expect(@fizzbuzz.convert(rules.buzz_multiple*1)).to eq(rules.buzz)
      expect(@fizzbuzz.convert(rules.buzz_multiple*2)).to eq(rules.buzz)
    end

    it 'returns fizzbuzz if number is divisible by fizz and buzz' do
      rules = @fizzbuzz.rules
      fizzbuzz = rules.fizz_multiple * rules.buzz_multiple
      expect(@fizzbuzz.convert(fizzbuzz)).to eq(rules.fizzbuzz)
    end

    it 'returns number if number is not fizz or buzz multiples' do
      expect(@fizzbuzz.convert(1)).to eq(1)
    end

    it 'returns converted list' do
      expect(@fizzbuzz.values[2]).to eq(@fizzbuzz.rules.fizz)
      expect(@fizzbuzz.values[2]).to eq(@fizzbuzz.rules.fizz)
      expect(@fizzbuzz.values[2]).to eq(@fizzbuzz.rules.fizz)
    end

    it 'returns fizz if number contains fizz multiple' do
      expect(@fizzbuzz.convert(13)).to eq('fizz')
    end
  end

  describe 'dynamic list of numbers' do
    it 'returns a list of n numbers' do
      fizzbuzz50 = FizzBuzz.new(50)
      expect(fizzbuzz50.values.length).to eq(50)
      fizzbuzz100 = FizzBuzz.new(100)
      expect(fizzbuzz100.values.length).to eq(100)
    end
  end

end