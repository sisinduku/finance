require 'spec_helper'

RSpec.describe Finance::DateRange do
  subject { described_class.new(start_date, end_date) }

  let(:start_date) { Date.parse('2021-02-01') }
  let(:end_date) { Date.parse('2021-02-10') }

  describe '#get_total_number_of_days' do
    let(:expected_number_of_days) { 9 }

    it 'returns number of days between start_date and end_date' do
      expect(subject.get_total_number_of_days).to eq(expected_number_of_days)
    end
  end
end
