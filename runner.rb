require_relative "employee"
require_relative "manager"


john = Employee.new({last_name: "Stamos",salary: 132000, first_name: "John"})
becky = Manager.new({last_name: "Gibler",salary: 142000, first_name: "Kimmy", office_number: 202})

# p john.send_report
p becky.office_number
p becky.first_name