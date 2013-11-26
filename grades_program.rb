require_relative 'assignment_grade'
require_relative 'final_grade'
require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'student'
require_relative 'student_reader'
require 'table_print'

grade_report= GradeReader.new("history_grades.csv")
history_assignments = grade_report.import
tp history_assignments

student_report = StudentReader.new("history_grades.csv")
history_students = student_report.import
tp history_students

report = GradeSummary.new(students)
puts "The class average is #{report.class_average}"
puts "The class min is #{report.class_min}"
puts "The class max is #{report.class_max}"

# student_grades = FinalGrade.new(students)



# history_assignments.find_grades_for_student("johnny")