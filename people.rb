#Create a parent Person class that contains the attribute name and an initializer to set the name.
class Person
  attr_accessor :name
  def greeting
    puts "Hi my name is #{name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end


instructor = Instructor.new
instructor.name  = "Chris"
instructor.greeting

#Create an instance of Student whose name is "Cristina" and call her greeting.
student = Student.new
student.name = "Christina"
student.greeting

#Call the teach method on your instructor instance and call the learn method on your student
instructor.teach
student.learn

#Next, call the teach method on your student instance. What happens? Why doesn't that work? Leave a comment in your program explaining why
student.teach
#the class student does not have a method teach
