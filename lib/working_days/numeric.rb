class Numeric
  def working_days_from date
    self.times { date = date.next_working_date }
    date
  end

  def working_days_before date
    self.times { date = date.prev_working_date }
    date
  end
end