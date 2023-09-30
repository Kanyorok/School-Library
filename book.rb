# frozen_string_literal: true

# Add book for collection
class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  # Create the has-many side of Book and Rental
  attr_reader :rentals

  # Modify the constructor of Rental to set Book and Person
  def rentto(person, date)
    rental = Rental.new(self, person, date)
    @rentals << rental
    person.rentals << rental
  end

  attr_accessor :title, :author
end
