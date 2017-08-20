class PaymentMethodSerializer < ActiveModel::Serializer
  attributes :id, :name, :number, :date_year, :date_month, :cvv, :routing, :methodtype
end
