# frozen_string_literal: true

# Class for handling names
class Nameable
  def correct_name
    raise NotImplementdError, 'method should be implemented in the correct class'
  end
end
