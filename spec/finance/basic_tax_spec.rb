require 'spec_helper'

RSpec.describe Finance::BasicTax do
  subject { described_class.new }

  describe '#income_tax' do
    let(:gross_income) { 1000 }
    let(:expected_income_tax) { 300 }

    it 'returns 30% of gross income' do
      expect(subject.income_tax(gross_income)).to eq(expected_income_tax)
    end
  end
end
