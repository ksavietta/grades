# Student - an object that represents a participant in a class
class Student
  attr_accessor :first_name, :last_name


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @grades = []
  end

  # def student_average
  #   student_grades = []
  #   @grades.each do |grade|
  #     student_grades << grade
  #   end
  #   sum = 0
  #   student_grades.each do |grade|
  #     sum += grade.to_f
  #   end
  #   sum / student_grades.length
  # end

end