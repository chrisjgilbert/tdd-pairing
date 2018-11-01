class StudentList
  attr_reader :students
  def initialize
    @students = []
  end

  def add(name)
    @students << name
  end

  def count_students
    @students.count
  end

  def clear_students
    @students.clear
  end

end
