module Marketing
  class Manager < Employee

    attr_reader :office_number

    def initialize(hash)
      super
      @office_number = hash[:office_number]
    end



    def send_report
      puts "Sending.... email"
      puts "Email sent!"
      puts @last_name
    end

  end
end