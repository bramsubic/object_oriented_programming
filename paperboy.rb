class Paperboy

  attr_accessor :name, :quota, :experience, :side
  attr_reader :earnings

  def initialize(name, side) #method
    @name = name
    @quota = 50
    @experience = 0
    @side = side
    @earnings = 0
  end

  def deliver(start_address, end_address)
    if (start_address%2 == 0 && end_address%2 == 0 && @side=='even') || (start_address%2 ==1 && end_address%2 ==1 && @side=='odd')
      numberofhouses=(end_address-start_address)/2
    else
      numberofhouses= (end_address-start_address)/2 + 1
    end

    if numberofhouses > @quota
      @earnings += @quota * 0.25
      @earnings += (numberofhouses - @quota) * 0.5
      @newearnings = @quota * 0.25
      @newearnings += (numberofhouses - @quota) * 0.5
    elsif numberofhouses < @quota
      @earnings = (numberofhouses * 0.25) - 2
    end
    @experience += numberofhouses
    @quota += @experience
    return @newearnings #when we call the method it will hand us a value
  end

  def pb_report
    puts "my name is #{name}, I've delivered #{experience} papers and I've earned #{earnings} so far."
  end

end

britt = Paperboy.new('britt', 'even')
# puts britt.name
# puts britt.side
# puts britt.deliver(333,444)
puts britt.pb_report
