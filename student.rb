# Student - an object that represents a participant in a class
class Student
  attr_accessor :first, :last


  def initialize(first, last)
    @first = first
    @last = last
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