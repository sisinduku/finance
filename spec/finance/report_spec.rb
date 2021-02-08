require 'spec_helper'

RSpec.describe Finance::Report do
  subject { described_class.new(income, expense, type, date) }
end
