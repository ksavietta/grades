# AssignmentGrade - an object that encapsulates the concept of a STUDENT AVERAGE

# assignment grade

# list of grades should have all of the assignment grades

class AssignmentGrade
  attr_accessor :first,:last,:grade

  def initialize(first, last, grade)
    @first = first
    @last = last
    @grade = grade
  end

  # def letter_grade
  #   #assignmentgrade evaluates what letter it is
  # end

end