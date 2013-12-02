# GradeReader - an object that is responsible for reading in grade data from a CSV
require 'CSV'
require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'assignment_grade'
require_relative 'student_reader'
require_relative 'final_grade'
require_relative 'student'


class StudentReader
  def initialize(file_name)
    raise "#{file_name} does not exist" unless File.exists? file_name
    @file_name = file_name
  end

    def import
    raw_grade_data = File.read(@file_name)
    students_array = CSV.parse(raw_grade_data, headers:true)

    @students = []
    students_array.each do |student|
      (1..5).each do |i|
        @students << Student.new(student[0], student[1], student["Grade#{i}"].to_i)
      end
    end
      @students
  end


end
