class Company
  attr_accessor :employees, :net_income
  def initialize(employees, net_income)
    self.employees = employees
    self.net_income = net_income
  end

  def yearly_employee_hours
    #50 weeks * 40 hours, assumes 2weeks vacation/unpaid a year
    2000
  end

  def one_dollar_raise
    employees*yearly_employee_hours
  end

  def income_with_raise_n(n)
    net_income - n * one_dollar_raise
  end

  def max_raise_break_even
    net_income / one_dollar_raise
  end

end

# Numbers taken from the wikipedia page of a Major Fast Food Service in America
employees = 210_000
net_income = 6025 * 1000 * 1000 #6025 million 6.25 billion
m = Company.new(employees, net_income)

puts "If every EMPLOYEE had their wage INCREASED by 10 dollars an hour, COMPANY would profit
 #{(m.income_with_raise_n 10)/(1000.0*1000.0)} million dollars"
puts "Every EMPLOYEE could have their wage increased #{m.max_raise_break_even} dollars an hour and COMPANY would break even"