class Employee

  # attr_writer 
  attr_accessor :salary
  attr_reader :first_name

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @salary = hash[:salary]
  end

  # def first_name
  #   @first_name
  # end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary}"
  end


end


john = Employee.new({last_name: "Stamos",salary: 132000, first_name: "John"})


john.salary = 50000

p john.salary
