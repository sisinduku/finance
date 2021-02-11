module Finance
  # Class for calculating your tax
  class Tax
    attr_reader :type

    def self.create(type)
      case type
      when 'INDIVIDUAL'
        Finance::IndividualTax.new
      when 'ENTERPRISE'
        Finance::EnterpriseTax.new
      when 'GOVERNMENT'
        Finance::GovernmentTax.new
      else
        Finance::BasicTax.new
      end
    end
  end
end
