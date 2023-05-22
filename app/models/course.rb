class Course < ApplicationRecord
    has_one :coordinator

    # accepts_nested_attributes_for :coordinator, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
    accepts_nested_attributes_for :coordinator  

    
end
