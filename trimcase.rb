# frozen_string_literal: true

require_relative 'decorator'
# Trim case class
class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.slice(0..10)
  end
end
