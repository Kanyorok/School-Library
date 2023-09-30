# frozen_string_literal: true

# subclass of the class person
class Students < Person
  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    return unless classroom.respond_to?(:students)

    @classroom = classroom
    @classroom.addstudent(self)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.addstudent(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
