class Employee

  attr_reader :first_name

  def initialize(first_name, last_name, salary)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
  end

  # def first_name
  #   @first_name
  # end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary}"
  end


end


john = Employee.new("John", "Stamos", 132000)
sally = Employee.new("Sally", "Jones", 155000)

p sally.first_name