require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'assignment_grade'
require_relative 'student_reader'
require_relative 'final_grade'
require_relative 'student'

class AssignmentGrade
  attr_accessor :first, :last, :score

  def initialize(first, last, score)
    @first = first
    @last = last
    @score = score
  end

end