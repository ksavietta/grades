# Student - an object that represents a participant in a class
require 'CSV'
require 'pry'
require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'assignment_grade'
require_relative 'student_reader'
require_relative 'final_grade'
require_relative 'student'


class Student
  attr_accessor :first, :last

  def initialize(first, last, scores)
    @first = first
    @last = last
    @scores = []
  end

end