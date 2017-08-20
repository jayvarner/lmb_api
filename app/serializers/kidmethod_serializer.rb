class KidmethodSerializer < ActiveModel::Serializer
  belongs_to :kid
  belongs_to :payment_method
  attributes :id, :default
end
