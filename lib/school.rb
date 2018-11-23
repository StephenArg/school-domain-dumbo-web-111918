class School
  def roster
    @@students
  end

  def initialize(name)
    @name = name
    @@students = {}
  end

  def add_student(student, grade)
    if @@students[grade]
      @@students[grade].push(student)
    else
      @@students[grade] = [student]
    end
  end

  def grade(grade)
    @@students[grade]
  end

  def sort
    @@students.each do |key, value|
      value.sort!
    end
    @@students
  end
end

