# frozen_string_literal: true

# subclass of the class person
class Students < Person
  attr_reader :classroom

  def initialize(id, age, classroom, name: 'Unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
