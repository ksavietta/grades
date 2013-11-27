# GradeSummary - an object that encapsulates the concept of the class' aggregate performance
require 'pry'
class GradeSummary

  def initialize(assignment_grades)
    @assignment_grades = assignment_grades
  end

def class_average
  class_grades = []
  @assignment_grades.each do |assignment_grade|
      class_grades << assignment_grade.score
  end
    sum = 0
    class_grades.each do |grade|
    sum += grade.to_f
  end
  sum / class_grades.length
end

def class_min
  class_grades = []
  @assignment_grades.each do |assignment_grade|
      class_grades << assignment_grade.score
  end
  class_grades.min
end

def class_max
  class_grades = []
  @assignment_grades.each do |assignment_grade|
      class_grades << assignment_grade.score
  end
  class_grades.max
end

def summary
  {average:class_average, min:class_min,max:class_max}
end

end