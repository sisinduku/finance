require 'spec_helper'

RSpec.describe Finance::GovernmentTax do
  subject { described_class.new }

  describe '#income_tax' do
    let(:gross_income) { 1000 }
    let(:expected_income_tax) { 50 }

    it 'returns 5% of gross income' do
      expect(subject.income_tax(gross_income)).to eq(expected_income_tax)
    end
  end
end
