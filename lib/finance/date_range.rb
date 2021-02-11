module Finance
  class DateRange
    attr_reader :start_date, :end_date

    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date
    end

    def get_total_number_of_days
      (@end_date - @start_date).to_i
    end
  end
end
