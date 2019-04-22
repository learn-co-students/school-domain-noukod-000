class School
#name and roster are methods that are initialized be the initialize method
# name has an instance variable, and roster an instance hash
   attr_accessor :name, :roster

   def initialize(name)
    @name = name
    @roster = {}
  end

     # we will empty the grade unless there's already a grade in the place

   def add_student(name, grade)
    roster[grade] = [] unless roster[grade]
    roster[grade] << name
  end

   def grade(num)
    roster[num]
  end

   def sort
    sorted = {}
    roster.each do |key, values|
      sorted[key] = values.sort
    end
    sorted
  end

 end 