# code here!
class School
  attr_accessor :roster

def initialize(school)
  @roster={}
end

def add_student(num,name)
    if(@roster[name]==nil)
      @roster[name] = []
      @roster[name] << num
    else
      @roster[name] << num
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
