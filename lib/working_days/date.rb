class Date
  def is_working_day?
    !saturday? && !sunday? && !holiday?(:gb_eng, :observed)
  end

  def next_working_date
    return next_day if next_day.is_working_day?
    next_day.next_working_date
  end

  def prev_working_date
    return prev_day if prev_day.is_working_day?
    prev_day.prev_working_date
  end
end


