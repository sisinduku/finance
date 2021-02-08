require 'spec_helper'

RSpec.describe Finance::Income do
  subject { described_class.new }
  let(:first_report) { Finance::Report.new(1000, 200, 'INDIVIDUAL', Date.parse('2021-01-01')) }
  let(:second_report) { Finance::Report.new(2000, 100, 'INDIVIDUAL', Date.parse('2021-02-01')) }
  let(:third_report) { Finance::Report.new(2000, 100, 'INDIVIDUAL', Date.parse('2021-03-01')) }
  let(:reports) { [first_report, second_report, third_report] }
  let(:start_date) { Date.parse('2021-02-01') }
  let(:end_date) { Date.parse('2021-03-01') }

  describe '#total_income_in' do
    let(:expected_result) { 4000 }

    it 'returns total net income' do
      expect(subject.total_income_in(start_date, end_date, reports)).to eq(expected_result)
    end
  end

  describe '#total_expense_in' do
    let(:expected_result) { 200 }

    it 'returns total expense in specified date range' do
      expect(subject.total_expense_in(start_date, end_date, reports)).to eq(expected_result)
    end
  end

  describe '#total_net_income_in' do
    let(:expected_result) { 3420.0 }

    it 'returns total net income in specified date range' do
      expect(subject.total_net_income_in(start_date, end_date, reports)).to eq(expected_result)
    end
  end

  describe '#average_income_in' do
    let(:expected_result) { 142.0 }

    it 'returns average income in specified date range' do
      expect(subject.average_income_in(start_date, end_date, reports)).to eq(expected_result)
    end
  end
end
