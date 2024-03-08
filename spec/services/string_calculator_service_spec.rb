require 'rails_helper'

RSpec.describe StringCalculatorService do
  describe '.addition' do
    it 'returns 0 for an empty string' do
      params = { numbers: '' }
      scs = StringCalculatorService.new(params).addition
      expect(scs).to eq(0)
    end

    it 'returns the number for a single number string' do
      scs = StringCalculatorService.new({ numbers: '5' })
      expect(scs.addition).to eq(5)
    end

    it 'returns the sum for two numbers separated by a comma' do
      scs = StringCalculatorService.new({ numbers: '1,5' })
      expect(scs.addition).to eq(6)
    end

    it 'handles new lines between numbers' do
      scs = StringCalculatorService.new({ numbers: "1\n2,3" })
      expect(scs.addition).to eq(6)
    end

    it 'supports custom delimiters' do
      scs = StringCalculatorService.new({ numbers: "//;\n1;2" })
      expect(scs.addition).to eq(3)
    end

    it 'throws an exception for negative numbers' do
      scs = StringCalculatorService.new({ numbers: '1,-2,3,-4' })
      scs.addition
      expect(scs.errors).to eq(['Negative numbers not allowed: -2, -4'])
    end
  end
end
