class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer_name, :customer_phone, :total_price
  has_many :products
end
