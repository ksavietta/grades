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
  attr_accessor :first, :last, :scores, :average, :grade

  def initialize(first, last, scores=nil)
    @first = first
    @last = last
    @scores = scores
    @average = average
    @grade = grade
  end

  def average
    total = 0
    @scores.each do |score|
        total += score
    end
    @average = total / @scores.length
  end

  def grade
  if @average > 90
    @grade = "A"
  elsif @average > 80
    @grade = "B"
  elsif @average > 70
    @grade = "C"
  elsif @average > 60
    @grade = "D"
  else
    @grade = "F"
  end
  @grade
end

end