require 'test/unit'
require 'hr'

class HrTest < Test::Unit::TestCase
  
  def setup
    @george = Employee.new("George", "Monkey", 10)
  end
  
  def test_overtime_of_45_hours
    hours_worked = 45
    expected_paycheck = 475
    assert_equal expected_paycheck, @george.pay(hours_worked)
  end
  
  def test_overtime_of_41_hours
    hours_worked = 41
    expected_paycheck = 415
    assert_equal expected_paycheck, @george.pay(hours_worked)
  end
  
  def test_overtime_of_4_and_a_half_hours
    hours_worked = 40.5
    expected_paycheck = 407.50
    assert_equal expected_paycheck, @george.pay(hours_worked)
  end  
  
  def test_regular_hours_for_hourly_employee
    hours_worked = 40
    expected_paycheck = 400
    assert_equal expected_paycheck, @george.pay(hours_worked)
  end
  
  def test_salaried_worker_paycheck
    salaried_employee = SalariedEmployee.new("Dora", "Explorer", 26000)
    expected_paycheck = 1000
    assert_equal expected_paycheck, salaried_employee.pay(40)
  end
  
end