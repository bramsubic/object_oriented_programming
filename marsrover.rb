class Rover

  attr_accessor :x_coord, :y_coord, :direction #reader and writer

def initialize(x_coord,y_coord,direction)
  @x_coord = x_coord
  @y_coord = y_coord
  @direction = direction
end

def read_instruction(instructions)
  commands = instructions.split("")
  commands.each do |item|
    if item == "L" || item == "R"
      turn(item)
    else item == "M"
      move
    end
  end
end

def turn(command)
  if (direction = "N" && command == "L") || (direction = "S" && command == "R")
    @direction = "W"
  elsif (direction = "E" && command == "L") || (direction = "W" && command == "R")
    @direction = "N"
  elsif (direction = "W" && command == "L") || (direction = "E" && command == "R")
    @direction = "S"
  elsif (direction = "S" && command == "L") || (direction = "N" && command == "R")
    @direction = "E"
  end
end

def move
  if direction == "N"
    @y_coord += 1
  elsif direction == "S"
    @y_coord -= 1
  elsif direction == "E"
    @x_coord += 1
  elsif direction == "W"
    @x_coord -= 1
  end
end

  def status
    return "The rover is positioned at #{@x_coord} #{@y_coord} facing #{@direction}."
  end

end

britt = Rover.new(3,3,'N')
britt.read_instruction('MMLLMM')
puts britt.status

joe = Rover.new(4,4,'S')
joe.read_instruction('RRLLRR')
puts joe.status
