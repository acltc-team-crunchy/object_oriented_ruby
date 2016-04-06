class Employee

  attr_accessor :salary, :first_name, :last_name, :active
 

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @salary = hash[:salary]
    @active = hash[:active]
  end

  def first_name
    @first_name
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary}"
  end


end


