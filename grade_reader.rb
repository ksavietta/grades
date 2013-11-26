# GradeReader - an object that is responsible for reading in grade data from a CSV
require 'CSV'
require_relative 'assignment_grade'


class GradeReader
  def initialize(file_name)
    raise "#{file_name} does not exist" unless File.exists? file_name
    @file_name = file_name
  end

  # returns array of student objects
  def import
    raw_grade_data = File.read(@file_name)
    grades_array = CSV.parse(raw_grade_data, headers:true)

    assignment_grades = []
    grades_array.each_with_index do |sc, index|
      assignment_grades << AssignmentGrade.new(sc['First'], sc['Last'],[sc['Grade1'],sc['Grade2'],sc['Grade3'],sc['Grade4'],sc['Grade5']])

    end
    assignment_grades
  end

  def find_grades_for_student(student)

    matched_grades = []
    grades.each do |assignment_grade|
      if student.first == assignment_grade.first
        matched_grades << assignment_grade
      end
    end
    matched_grades
    # for all assignments in history, return grades that match with student's name
  end


end


# results = []
# CSV.foreach(@filename, headers:true) do |row|
#   results << Student.new(row["first"], row["last"], )
# end


