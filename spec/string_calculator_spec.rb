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

    context 'when string contains three comma seperated numbers' do
      let(:str) { '2,10,33' }

      it 'returns 45 for 2,10,33' do
        expect(string_sum).to eq(45)
      end
    end

    context 'when string contains five comma seperated numbers' do
      let(:str) { '2,10,33,1,5' }

      it 'returns 51 for 2,10,33,1,5' do
        expect(string_sum).to eq(51)
      end
    end

    context 'when string contains new lines and commas' do
      let(:str) { '1\n2,3' }

      it 'returns 6 for 1\n2,3' do
        expect(string_sum).to eq(6)
      end
    end

    context 'when string contains custom delimeter' do
      let(:str) { '//;\n1;2' }

      it 'returns 3 for //;\n1;2' do
        expect(string_sum).to eq(3)
      end
    end
  end
end
