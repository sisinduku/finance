module Finance
  # Class for calculating your income
  class Income
    def get_total_net_income(reports)
      reports.sum { |report| get_net_income(report) }
    end

    def total_income_in(date_range, reports)
      reports.reduce(0) do |total_income, report|
        if report.date >= date_range.start_date && report.date <= date_range.end_date
          total_income + report.income
        else
          total_income
        end
      end
    end

    def total_expense_in(date_range, reports)
      reports.reduce(0) do |total_expense, report|
        if report.date >= date_range.start_date && report.date <= date_range.end_date
          total_expense + report.expense
        else
          total_expense
        end
      end
    end

    def total_net_income_in(date_range, reports)
      total_net_income = 0
      reports.each do |report|
        next unless report.date >= date_range.start_date && report.date <= date_range.end_date

        total_net_income += get_net_income(report)
      end
      total_net_income
    end

    def average_income_in(date_range, reports)
      total_days = date_range.get_total_number_of_days
      total_income_in(date_range, reports) / total_days
    end

    private

    def get_net_income(report)
      gross_income = report.income - report.expense
      net_income = gross_income - report.income_tax(gross_income)
      return net_income
    end
  end
end
