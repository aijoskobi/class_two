require 'test/unit'
require 'hr'

class HrTest < Test::Unit::TestCase
  
  def setup
    @george = Employee.new("George", "Monkey", 10)
  end
  
  def test_overtime
    hours_worked = 45
    expected_paycheck = 475
    assert_equal expected_paycheck, @george.pay(hours_worked)
  end
  
  def test_regular_hours
    hours_worked = 40
    expected_paycheck = 400
    assert_equal expected_paycheck, @george.pay(hours_worked)
  end
  
end