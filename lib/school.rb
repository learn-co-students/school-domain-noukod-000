class School
  attr_accessor :roster, :student_name, :grade, :schl_name

  def initialize(schl_name)
    @schl_name = schl_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(student_name)
    @roster[student_name]
  end
  def sort
    @roster.each do |students, grade|
      grade.sort!
    end
    return roster
  end
end
