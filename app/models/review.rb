class Review < ApplicationRecord
    has_many:customers
    

def full_name
    self.last_name + " " + self.first_name
end
end
