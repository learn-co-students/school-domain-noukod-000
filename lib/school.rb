class School

  attr_accessor :roster

  def initialize(school_name)
    @roster={}
  end

  def add_student(number,name)
    if(@roster[name]==nil)
      @roster[name] = []
      @roster[name] << number
    else
      @roster[name] << number
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
  @roster.each do |stud, gr|
    gr.sort!
  end
  @roster
end

end
