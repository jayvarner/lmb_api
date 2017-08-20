class LunchSerializer < ActiveModel::Serializer
    has_many :kids
  attributes :id, :name, :day, :description
end
