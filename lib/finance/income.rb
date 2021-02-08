module Finance
  class Income
    def get_total_net_income(reports)
      total_net_income = 0
      reports.each do |report|
        gross_income = report.income - report.expense
        net_income = gross_income - (gross_income * report.tax)
        total_net_income += net_income
      end
      total_net_income
    end
  end
end
