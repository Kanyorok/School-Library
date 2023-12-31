# frozen_string_literal: true

require_relative 'nameable'
# Decorator class for use with capitalize and trim classes
class Decorator < Nameable
  attr_reader :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
