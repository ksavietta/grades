# FinalGrade - an object that encapsulates the concept of a
require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'assignment_grade'
require_relative 'student_reader'
require_relative 'final_grade'
require_relative 'student'


class FinalGrade

  def initialize(students)
    @students = students
  end

    def average
    @grades.each do |grade|
    end
    end

    def letter_grade
    if average > 90
      final_grade = "A"
    elsif average > 80
      final_grade = "B"
    elsif average > 70
      final_grade = "C"
    elsif average > 60
      final_grade = "D"
    else
      final_grade = "F"
    end
  final_grade
  end

end