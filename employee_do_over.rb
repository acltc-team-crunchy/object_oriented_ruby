module EmailReporter

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end


class Employee
  include EmailReporter
  # attr_accessor :active, :first_name, :last_name
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

end


class Manager < Employee
  # include EmailReporter
  attr_reader :employees
  attr_accessor :rank

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

class Intern < Employee
  # include EmailReporter
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new({first_name: "Danilo", last_name: "Campos", salary: 70000, active: true})
manager = Manager.new({first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2]})
intern1 = Intern.new({first_name: "Sam", last_name: "Yi", salary: 0, active: true})
p intern1
intern1.send_report
manager.send_report


# p manager.employees
# # manager.print_info
# # p manager.employees
# manager.give_all_raises
# # manager.fire_all_employees
# p manager.employees
