require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'assignment_grade'
require_relative 'student_reader'
require_relative 'final_grade'
require_relative 'student'


students = StudentReader.new('history_grades.csv')
students = students.import
puts "All the students are:"
students.each do |student|
  puts "#{student.first}, #{student.last}, #{student.scores}, average: #{student.average}, grade: #{student.grade}"
end

grades = GradeReader.new('history_grades.csv')
grades = grades.import
grade_report = GradeSummary.new(grades)
puts "the class average is: #{grade_report.class_average}"

StudentOutput.new(students).output
puts "printing student data to file sorted by last name...."





