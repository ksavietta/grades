# FinalGrade - an object that encapsulates the concept of a student's class information

class FinalGrade
attr_accessor :student, :assignment_grades, :final_score, :final_grade


  def initialize(student, assignment_grades)
    @student = student
    @assignment_grades = assignment_grades

    final_score = 0.00
    @assignment_grades.each do |assignment_grade|
      final_score += assignment_grade.score
    end
    @final_score = final_score / @assignment_grades.length

    if @final_score >= 90
      @final_grade = "A"
    elsif @final_score >= 80 && @final_score < 90
      @final_grade = "B"
    elsif @final_score >= 70 && @final_score < 80
      @final_grade = "C"
    elsif @final_score >= 60 && @final_score < 70
      @final_grade = "D"
    else
      @final_grade = "F"
    end
  end

end