class Lunch < ApplicationRecord
    has_and_belongs_to_many :kids    
end
