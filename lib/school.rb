class School

  attr_accessor :roster

  def initialize(stu_name)
    @stu_name = stu_name
    @roster = Hash.new { |i,j| i[j] = []}
  end

  def add_student(stu_name, year)
    @roster[year] << stu_name
  end

  def grade(year)
    @roster[year]
  end

  def sort
    Hash[@roster.collect{ |a| [a.first, sort_students(a.first)] }]
  end

 

  def sort_students(year)
   grade(year).sort
  end

end