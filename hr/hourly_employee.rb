class HourlyEmployee < Employee

  def pay(hours_worked)
    if hours_worked <= 40
      return hours_worked * @payrate
    end
    paycheck = 0
    over_time_hours = hours_worked - 40
    regular_hours = hours_worked - over_time_hours
    paycheck = paycheck + (over_time_hours * (@payrate * 1.5))
    paycheck = paycheck + (regular_hours * @payrate)
  end
  
  def promote_to_salaried(pay_rate)
    SalariedEmployee.new(@fname, @lastname, pay_rate)
  end
  
end