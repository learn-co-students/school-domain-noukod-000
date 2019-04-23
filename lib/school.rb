# code here!
class School
  attr_reader :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(val,cle)
    @roster[cle] = [] unless @roster.key?(cle)
    @roster[cle] << val
  end 
  
  def grade(cle)
    @roster[cle]
  end 
  
  def sort_student(a)
    grade(a).sort
  end 
  
  def sort 
   Hash[@roster.collect{|a| [a.first,sort_student(a.first)]}]
  end
end 