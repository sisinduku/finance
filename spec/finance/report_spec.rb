require 'spec_helper'

RSpec.describe Finance::Report do
  subject { described_class.new(income, expense, type, date) }

  describe '#income_tax' do
    let(:income) { 1100 }
    let(:expense) { 100 }
    let(:gross_income) { income - expense }
    let(:type) { 'INDIVIDUAL' }
    let(:date) { '2021-02-01' }

    it 'returns calculated tax based on the income' do
      expect(subject.income_tax(gross_income)).to eq(100)
    end
  end
end
