# GradeReader - an object that is responsible for reading in grade data from a CSV
require 'CSV'
require_relative 'student'


class GradeReader
  def initialize(file_name)
    raise "#{filename} does not exist" unless File.exists? filename
    @file_name = file_name
  end

  # returns array of student objects
  def import
    raw_grade_data = File.read(@file_name)
    student_grades_array = CSV.parse(raw_grade_data)

    students = []
    student_grades_array.each_with_index do |student, index|
      next if index == 0
      students << Student.new(student[0], student[1], [student[2],student[3],student[4],student[5],student[6]])
    end
    students
  end


end


# results = []
# CSV.foreach(@filename, headers:true) do |row|
#   results << Student.new(row["first"], row["last"], )
# end


