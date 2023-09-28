# frozen_string_literal: true

require_relative 'decorator'
# Capitalize case
class CapitalizeDecorator < Decorator
    
  def correct_name
    @nameable.correct_name.upcase
  end
end
