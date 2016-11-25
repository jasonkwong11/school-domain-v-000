# code here!

class School

  attr_accessor :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    if @roster[grade].nil?
      @roster[grade] = [].push(name)
    else
      @roster[grade].push(name)
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name_array|
      name_array.sort!
    end
  end
end
