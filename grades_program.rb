require_relative 'assignment_grade'
require_relative 'final_grade'
require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'student'
require 'table_print'

# file = 'history_grades.csv'
# history_grades = GradeReader.new(file)


# p history_grades.parse_data[0]
# p history_grades.parse_data[1]

# formatted_history_grades = history_grades.format

reader = GradeReader.new("history_grades.csv")
students = reader.import
# tp students

report = GradeSummary.new(students)
puts "The class average is #{report.class_average}"
puts "The class min is #{report.class_min}"
puts "The class max is #{report.class_max}"

# student_grades = FinalGrade.new(students)

