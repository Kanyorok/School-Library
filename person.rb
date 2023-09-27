# frozen_string_literal: true

# class for library
class Person
  # constructor method
  attr_reader :id, :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    @name = name
    @age = age
    @id = Random.rand(1..1000)
    @parent_permission = parent_permission
  end

  # getter methods
  def getid
    @id
  end

  def getname
    @name
  end

  def getage
    @age
  end

  # setter methods
  def setname=(val)
    @name = val
  end

  def setage=(val)
    @age = val
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end