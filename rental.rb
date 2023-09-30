# frozen_string_literal: true

# Add class rental
class Rental
  def initialize(book, person, date)
    @date = date
    @book = book
    @person = person
    # Modify the constructor of Rental to set Book and Person
    book.rentals << self
    person.rentals << self
  end

  attr_accessor :date
  attr_reader :book, :person
end
