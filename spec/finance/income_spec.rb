require 'spec_helper'

RSpec.describe Finance::Income do
  subject { described_class.new }

  describe '#total_income_in' do
    let(:first_report) { double(income: 1000, expense: 200, tax: 0.1, date: Date.parse('2021-01-01')) }
    let(:second_report) { double(income: 2000, expense: 100, tax: 0.1, date: Date.parse('2021-02-01')) }
    let(:third_report) { double(income: 2000, expense: 100, tax: 0.1, date: Date.parse('2021-03-01')) }
    let(:reports) { [first_report, second_report, third_report] }
    let(:start_date) { Date.parse('2021-02-01') }
    let(:end_date) { Date.parse('2021-03-01') }

    let(:expected_result) { 4000 }

    it 'returns total net income' do
      expect(subject.total_income_in(start_date, end_date, reports)).to eq(expected_result)
    end
  end
end
