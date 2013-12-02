# Student - an object that represents a participant in a class
class Student
  attr_accessor :first, :last

  def initialize(first, last)
    @first = first
    @last = last
  end

end