require "./employee_marketing"
require "./employee_hr"
require "./manager"


john = Marketing::Employee.new({last_name: "Stamos",salary: 132000, first_name: "John"})
becky = Marketing::Manager.new({last_name: "Gibler",salary: 142000, first_name: "Kimmy", office_number: 202})
sami = HumanResource::Employee.new({last_name: "Jones",salary: 142000, first_name: "Bob", office_number: 202})


# p john.send_report
p becky.office_number
p becky.first_name
sami.send_warning