require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when string is empty' do
      it 'returns 0' do
        expect(described_class.add('')).to eq(0)
      end
    end
  end
end
