class School
def roster(roster)
  @roster = roster
end
def roster
  @roster
end

end
school = School.new("Bayside High School")
school.roster
