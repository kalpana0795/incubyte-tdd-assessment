require 'string_calculator'

RSpec.describe StringCalculator do
  subject(:string_sum) { described_class.add(str) }

  describe '.add' do
    context 'when string is empty' do
      let(:str) { '' }

      it 'returns 0' do
        expect(string_sum).to eq(0)
      end
    end

    context 'when string contains one number' do
      let(:str) { '1' }

      it 'returns 1 for 1' do
        expect(string_sum).to eq(1)
      end
    end

    context 'when string contains two comma seperated numbers' do
      let(:str) { '1,5' }

      it 'returns 6 for 1,5' do
        expect(string_sum).to eq(6)
      end
    end
  end
end
