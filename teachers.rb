# frozen_string_literal: true

# subclass for the person
class Teacher < Person
  attr_reader :specialization

  def initialize(name, age, specialization, _parent_permission)
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
