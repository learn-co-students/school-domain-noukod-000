# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster.include?(grade) == true
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
    @roster
    end

end
