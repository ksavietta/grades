# GradeReader - an object that is responsible for reading in grade data from a CSV
require 'CSV'
require_relative 'student'


class StudentReader
  def initialize(file_name)
    raise "#{file_name} does not exist" unless File.exists? file_name
    @file_name = file_name
  end

  # returns array of student objects
  def import
    raw_grade_data = File.read(@file_name)
    student_grades_array = CSV.parse(raw_grade_data)

    students = []
    student_grades_array.each_with_index do |student, index|
      next if index == 0
      students << Student.new(student[0], student[1])

    end
    students
  end


end
