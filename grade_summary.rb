# GradeSummary - an object that encapsulates the concept of the class' aggregate performance
require 'pry'
class GradeSummary

    def initialize(students)
      @students = students
    end

def class_average
  class_grades = []
  @students.each do |student|
    student.grades.each do |grade|
      class_grades << grade
    end
  end
    sum = 0
    class_grades.each do |grade|
    sum += grade.to_f
  end
  sum / class_grades.length
end

def class_min
  class_grades = []
  @students.each do |student|
    student.grades.each do |grade|
      class_grades << grade.to_i
    end
  end
  class_grades.min
end

def class_max
   class_grades = []
  @students.each do |student|
    student.grades.each do |grade|
      class_grades << grade.to_i
    end
  end
  class_grades.max
end


end