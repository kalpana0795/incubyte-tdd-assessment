require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when string is empty' do
      it 'returns 0' do
        expect(described_class.add('')).to eq(0)
      end
    end

    context 'when string contains one number' do
      it 'returns 1 for 1' do
        expect(described_class.add('1')).to eq(1)
      end
    end
  end
end
