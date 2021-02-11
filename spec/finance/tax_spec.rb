require 'spec_helper'

RSpec.describe Finance::Tax do
  subject { described_class.new(type) }

  describe '.create' do
    context 'when type is an individual tax' do
      let(:type) { 'INDIVIDUAL' }

      it 'returns IndividualTax object' do
        expect(described_class.create(type)).to be_a(Finance::IndividualTax)
      end
    end

    context 'when type is a enterprise tax' do
      let(:type) { 'ENTERPRISE' }

      it 'returns EnterpriseTax object' do
        expect(described_class.create(type)).to be_a(Finance::EnterpriseTax)
      end
    end

    context 'when type is a government tax' do
      let(:type) { 'GOVERNMENT' }

      it 'returns GovernmentTax object' do
        expect(described_class.create(type)).to be_a(Finance::GovernmentTax)
      end
    end

    context 'when type is other than above' do
      let(:type) { 'OTHER' }

      it 'returns BasicTax object' do
        expect(described_class.create(type)).to be_a(Finance::BasicTax)
      end
    end
  end
end
