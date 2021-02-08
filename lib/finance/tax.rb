module Finance
  # Class for calculating your tax
  class Tax
    def initialize(type)
      @type = type
    end

    def income_tax(gross_income)
      case @type
      when 'INDIVIDUAL'
        gross_income * 0.1
      when 'ENTERPRISE'
        gross_income * 0.2
      when 'GOVERNMENT'
        gross_income * 0.05
      else
        gross_income * 0.3
      end
    end
  end
end
