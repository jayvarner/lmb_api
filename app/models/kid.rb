class Kid < ApplicationRecord
    has_many :payment_methods
    has_and_belongs_to_many :lunches
end
