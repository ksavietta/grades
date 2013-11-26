# GradeReader - an object that is responsible for reading in grade data from a CSV
require 'CSV'
require_relative 'student'


class GradeReader
  # attr_accessor :file_name

  def initialize(file_name)
    @file_name = file_name
  end

  def import
    # returns array of student objects
    students = []
    if File.exists?(@file_name)
      raw_grade_data = File.read(@file_name)
      student_grades_array = CSV.parse(raw_grade_data)

      student_grades_array.each do |student|
        students << Student.new(student[0], student[1], [student[2],student[3],student[4],student[5],student[6]])
      end
    else
      puts "please enter valid file_name"
    end
    students
  end


end
