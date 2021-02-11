require 'spec_helper'

RSpec.describe Finance::IndividualTax do
  subject { described_class.new }

  describe '#income_tax' do
    let(:gross_income) { 1000 }
    let(:expected_income_tax) { 100 }

    it 'returns 10% of gross income' do
      expect(subject.income_tax(gross_income)).to eq(expected_income_tax)
    end
  end
end
