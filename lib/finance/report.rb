module Finance
  # Class for encapsulating report
  class Report
    attr_reader :income, :expense, :date

    def initialize(income, expense, type, date)
      @income = income
      @expense = expense
      @tax = Tax.create(type)
      @date = date
    end

    def income_tax(gross_income)
      @tax.income_tax(gross_income)
    end
  end
end
