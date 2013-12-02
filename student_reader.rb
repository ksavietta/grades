# StudentReader - an object that is responsible for reading in student data from a CSV
require 'CSV'
require_relative 'student'

class StudentReader
  def initialize(file_name)
    raise "#{file_name} does not exist" unless File.exists? file_name
    @file_name = file_name
  end

  def import
    raw_grade_data = File.read(@file_name)
    @student_array = CSV.parse(raw_grade_data, headers:true)

    @students = []
    @student_array.each do |sc|
        @students << Student.new(sc['First'], sc['Last'])
    end
    @students
  end
end
