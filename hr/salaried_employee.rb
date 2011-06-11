class SalariedEmployee < Employee
  
  def pay(hours_worked)
    @payrate / 52
  end
  
end