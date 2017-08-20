class KidSerializer < ActiveModel::Serializer
    has_many :lunches
  attributes :id, :name, :school, :balance, :default_method, :autopay
end
