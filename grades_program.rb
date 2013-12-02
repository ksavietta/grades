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
  puts "#{student.first}, #{student.last}"
end

# grades = GradeReader.new('history_grades.csv')
# grades = grades.import
# grade_report = GradeSummary.new(grades)
# puts "the class average is: #{grade_report.class_average}"

# students = StudentReader.new('history_grades.csv')
# students = students.import
# puts students
# final_grades = FinalGrade.new(students)





























# scores = grade_report.import
# p grade_report.scores


# average = grade_report.average

# scores_average = grade_report.average
# all_student_average = grade_report.average
# tp all_student_average
# # tp scores
# puts


#########################################################
# student_report = StudentReader.new("history_grades.csv")
# all_students = student_report.import




# tp all_students
# puts

# report = GradeSummary.new(history_students)
# puts "The class average is #{report.class_average}"
# puts "The class min is #{report.class_min}"
# puts "The class max is #{report.class_max}"

# student_grades = FinalGrade.new(students)



# tp grade_report.find_grades_for_student(all_students[0])

