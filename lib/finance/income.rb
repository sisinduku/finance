module Finance
  # Class for calculating your income
  class Income
    def get_total_net_income(reports)
      total_net_income = 0
      reports.each do |report|
        gross_income = report.income - report.expense
        net_income = gross_income - report.tax.income_tax(gross_income)
        total_net_income += net_income
      end
      total_net_income
    end

    def total_income_in(start_date, end_date, reports)
      reports.reduce(0) do |total_income, report|
        if report.date >= start_date && report.date <= end_date
          total_income + report.income
        else
          total_income
        end
      end
    end

    def total_expense_in(start_date, end_date, reports)
      reports.reduce(0) do |total_expense, report|
        if report.date >= start_date && report.date <= end_date
          total_expense + report.expense
        else
          total_expense
        end
      end
    end

    def total_net_income_in(start_date, end_date, reports)
      total_net_income = 0
      reports.each do |report|
        next unless report.date >= start_date && report.date <= end_date

        gross_income = report.income - report.expense
        net_income = gross_income - report.tax.income_tax(gross_income)
        total_net_income += net_income
      end
      total_net_income
    end

    def average_income_in(start_date, end_date, reports)
      total_days = (end_date - start_date).to_i
      total_income_in(start_date, end_date, reports) / total_days
    end
  end
end
