require "fizzbuzz"

describe 'Fizz buzz' do
  before(:each) do
    @fizz = FizzBuzz.new
  end

  it 'returns a list of 100 numbers' do
    expect(@fizz.values.length).to eq(100)
  end

  it 'returns fizz if number is divisible by fizz' do
    expect(@fizz.convert(FizzBuzz::FIZZ_MULTIPLE*1)).to eq(FizzBuzz::FIZZ)
    expect(@fizz.convert(FizzBuzz::FIZZ_MULTIPLE*2)).to eq(FizzBuzz::FIZZ)
  end

  it 'returns buzz if number is divisible by buzz' do
    expect(@fizz.convert(FizzBuzz::BUZZ_MULTIPLE*1)).to eq(FizzBuzz::BUZZ)
    expect(@fizz.convert(FizzBuzz::BUZZ_MULTIPLE*2)).to eq(FizzBuzz::BUZZ)
  end

  it 'returns fizzbuzz if number is divisible by fizz and buzz' do
    fizzbuzz = FizzBuzz::FIZZ_MULTIPLE * FizzBuzz::BUZZ_MULTIPLE
    expect(@fizz.convert(fizzbuzz)).to eq(FizzBuzz::FIZZBUZZ)
  end

  it 'returns number if number is not fizz or buzz multiples' do
    expect(@fizz.convert(1)).to eq(1)
  end

  it 'returns converted list' do
    expect(@fizz.values[2]).to eq(FizzBuzz::FIZZ)
  end

  it 'returns fizz if number contains fizz multiple' do
    expect(@fizz.convert(13)).to eq('fizz')
  end

end
