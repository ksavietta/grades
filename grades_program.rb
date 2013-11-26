require_relative 'assignment_grade'
require_relative 'final_grade'
require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'student'
require 'table_print'

reader = GradeReader.new("history_grades.csv")
students = reader.import
# tp students

report = GradeSummary.new(students)
puts "The class average is #{report.class_average}"
puts "The class min is #{report.class_min}"
puts "The class max is #{report.class_max}"

# student_grades = FinalGrade.new(students)

student1.grades