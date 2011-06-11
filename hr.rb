class Employee
  
  attr_accessor :fname, :lname, :payrate, :hours_worked

  def initialize (fname,lname, payrate)
    @fname = fname
    @lname = lname
    @payrate = payrate
  end

  def pay(hours_worked)
    paycheck = 0
    if hours_worked > 40
      over_time_hours = hours_worked - 40
      regular_hours = hours_worked - over_time_hours
      paycheck = paycheck + (over_time_hours * (@payrate * 1.5))
      paycheck = paycheck + (regular_hours * @payrate)
    else
      paycheck = paycheck + (hours_worked * @payrate)
    end
    paycheck
  end
  
  def to_s
    "The employee #{@fname} #{@lname} earns $#{@payrate} per hour."
  end
end

employee_list = []
employee_list << Employee.new("George", "Monkey", 10)
employee_list << Employee.new("Sally", "Summers", 12)
employee_list << Employee.new("Thomas", "Tank", 18) 
 

# puts "\nFor week one payroll"
# employee_list.each do |employee|
#   puts "#{employee.fname} will be paid #{employee.pay(40)}"
# end
# 
# puts "\nFor week two payroll"
# employee_list.each do |employee|
#   puts "#{employee.fname} will be paid #{employee.pay(32)}"
# end
# 
# puts "\nFor week three payroll with overtime"
# employee_list.each do |employee|
#   puts "#{employee.fname} will be paid #{employee.pay(45)}"
# end