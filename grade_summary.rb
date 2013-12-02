# GradeSummary - an object that encapsulates the concept of the class' aggregate performance
require 'pry'
require_relative 'grade_reader'
require_relative 'assignment_grade'
require_relative 'student_reader'
require_relative 'final_grade'
require_relative 'student'

class GradeSummary

  def initialize(grades)
    @grades = grades
  end

  def class_average
    class_average = 0
    @grades.each do |grade|
      class_average += grade.score
    end
    class_average.to_f / @grades.length
  end
end


