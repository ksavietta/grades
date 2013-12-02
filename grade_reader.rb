require 'CSV'
require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'assignment_grade'
require_relative 'student_reader'
require_relative 'final_grade'
require_relative 'student'

class GradeReader

  def initialize(file_name)
    raise "#{file_name} does not exist" unless File.exists? file_name
    @file_name = file_name
  end

  def import
    raw_grade_data = File.read(@file_name)
    student_grades_array = CSV.parse(raw_grade_data, headers:true)

    @grades = []
    student_grades_array.each do |student|
      (1..5).each do |i|
        @grades << AssignmentGrade.new(student[0], student[1], student["Grade#{i}"].to_i)
      end
    end
      @grades
  end


    def find_grades_for_student(student)

      matched_grades = []
      @scores.each do |score|
        if student.first == score.first && student.last == score.last
          matched_grades << score
        end
      end
      matched_grades
    end

  end

