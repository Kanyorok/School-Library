# frozen_string_literal: true

# class to use with association
class Classroom
  # attribute and constructor
  def initialize(label)
    @label = label
    @students = []
  end

  def addstudent(student)
    students << student
    student.classroom = self
  end

  attr_accessor :label
  attr_reader :students
end
