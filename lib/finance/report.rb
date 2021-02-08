module Finance
  #Class for encapsulating report
  class Report
    attr_reader :income, :expense, :tax, :date

    def initialize(income, expense, type, date)
      @income = income
      @expense = expense
      @tax = Tax.new(type)
      @date = date
    end
  end
end
