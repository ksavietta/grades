# FinalGrade - an object that encapsulates the concept of a
require 'pry'
require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'assignment_grade'
require_relative 'student_reader'
require_relative 'final_grade'
require_relative 'student'


class FinalGrade
  attr_accessor :student
  def initialize(student)
    @student = student
  end

end