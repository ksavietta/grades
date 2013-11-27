require_relative 'assignment_grade'
require_relative 'final_grade'
require_relative 'grade_reader'
require_relative 'grade_summary'
require_relative 'student'
require_relative 'student_reader'
require "CSV"
require 'table_print'


begin
  puts "Please enter a valid file name for Grade Reporting"
  file_name = gets.chomp
end until File.exists?(file_name)


grade_report = GradeReader.new(file_name)
history_assignments = grade_report.import

student_report = StudentReader.new(file_name)
history_students = student_report.import

summary_report = GradeSummary.new(history_assignments)
puts "The class average is #{summary_report.summary[:average]}"
puts "The class min is #{summary_report.summary[:min]}"
puts "The class max is #{summary_report.summary[:max]}"

history_final_grades = []
history_students.each do |student|
  history_final_grades <<  FinalGrade.new(student,grade_report.find_grades_for_student(student))
end

history_final_grades.sort_by! {|final_grade| final_grade.student.last}
history_final_grades.each do |final_grade|
  puts "Name: #{final_grade.student.first} #{final_grade.student.last} | Final Score: #{final_grade.final_score} | Final Grade: #{final_grade.final_grade}"
end


CSV.open('report_card_data.csv', 'w') do |csv|
  csv << ["Last Name", "First Name", "Final Grade", "Final Score"]
  history_final_grades.each do |student_final_grade|
    csv << ["#{student_final_grade.student.last}","#{student_final_grade.student.first}", "#{student_final_grade.final_grade}", "#{student_final_grade.final_score}"]
  end
end

puts "Do you want to open this in excel? (Y or N?)"
input = gets.chomp

if input.downcase == 'y'
  `open report_card_data.csv`
end