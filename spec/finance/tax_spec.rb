require 'spec_helper'

RSpec.describe Finance::Tax do
  subject { described_class.new(type) }

  describe 'income_tax' do
    let(:gross_income) { 1000 }

    context 'when type is INDIVIDUAL' do
      let(:type) { 'INDIVIDUAL' }
      let(:expected_tax) { 100.0 }

      it 'returns 10% of the griss income' do
        expect(subject.income_tax(gross_income)).to eq(expected_tax)
      end
    end

    context 'when type is ENTERPRISE' do
      let(:type) { 'ENTERPRISE' }
      let(:expected_tax) { 200.0 }

      it 'returns 20% of the griss income' do
        expect(subject.income_tax(gross_income)).to eq(expected_tax)
      end
    end

    context 'when type is GOVERNMENT' do
      let(:type) { 'GOVERNMENT' }
      let(:expected_tax) { 50.0 }

      it 'returns 5% of the griss income' do
        expect(subject.income_tax(gross_income)).to eq(expected_tax)
      end
    end
  end
end
