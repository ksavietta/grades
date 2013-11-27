# AssignmentGrade - an object that encapsulates the concept of a STUDENT AVERAGE

# assignment grade

# list of grades should have all of the assignment grades

class AssignmentGrade
  attr_accessor :first,:last,:score

  def initialize(first, last, score)
    @first = first
    @last = last
    @score = score
  end

  def letter_grade
    #assignmentgrade evaluates what letter it is
    if @score >= 90
      "A"
    elsif @score >= 80 && @score < 90
      "B"
    elsif @score >= 70 && @score < 80
      "C"
    elsif @score >= 60 && @score < 70
      "D"
    else
      "F"
    end
  end

end