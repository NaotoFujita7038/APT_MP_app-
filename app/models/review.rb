class Review < ApplicationRecord
    has_many:customers
    validates :star, numericality: {
      less_than_or_equal_to: 5,
      greater_than_or_equal_to: 1}, presence: true

def full_name
    self.last_name + " " + self.first_name
end
end
