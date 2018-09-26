require 'pry'
class School
  attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(student_name, grade)
      roster[grade] ||= []
      roster[grade] << student_name
    end

    def grade(grade)
      roster[grade]
    end

    # this method should arrange the students in each grade by alphabetical order
    def sort
      sorted = {}
      roster.each do |grade, students|
        sorted[grade] = students.sort
      end
      sorted
  end
end

# sc = School.new("pam lekol")
# sc.add_student("AC Slater", 10)
# binding.pry
