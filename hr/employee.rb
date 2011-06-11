class Employee
  
  attr_accessor :fname, :lname, :payrate

  def initialize (fname,lname, payrate)
    @fname = fname
    @lname = lname
    @payrate = payrate
  end

  def to_s
    "The employee #{@fname} #{@lname}"
  end
end