# GradeReader - an object that is responsible for reading in grade data from a CSV
require 'CSV'
require 'pry'
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
      scores = []
        (1..5).each do |i|
          scores << student["Grade#{i}"].to_i
        end
        @students << Student.new(student[0], student[1], scores)
      end
      @students
    end
end

class StudentOutput
  def initialize(students)
    @sorted_students = students.sort_by {|student| student.last}
  end

  def output
    CSV.open('final_grades_data.csv', 'w') do |csv|
      csv << ["First Name","Last Name","Average","Letter Grade"]
      @sorted_students.each do |student|
        csv << [student.first,student.last,student.average.to_f,student.grade]
      end
    end
  end
end
