require 'employee'
require 'salaried_employee'
require 'hourly_employee'

class HumanResources
  
  def initialize()
    @employee_list = []
    @employee_list << HourlyEmployee.new("George", "Monkey", 10)
    @employee_list << HourlyEmployee.new("Sally", "Summers", 12)
    @employee_list << HourlyEmployee.new("Thomas", "Tank", 18) 
    @employee_list << SalariedEmployee.new("Dora", "el Exlorer", 40000)
  end

  def run_payroll(week, hours)
    puts "\nFor week #{week} payroll"
    @employee_list.each do |employee|
      print_employee_paycheck(employee, hours)
    end
  end

  def print_employee_list
    @employee_list.each { |employee| puts employee }
  end
  
  private
  def print_employee_paycheck(employee, hours)
    puts "#{employee.fname} will be paid #{employee.pay(hours)}"
  end

end

# hr = HumanResources.new
# hr.employee_list
# 
# hr.run_payroll("one", 40)
# hr.run_payroll("two", 32)
# hr.run_payroll("three with overtime", 45)
