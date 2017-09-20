class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :img_src, :price, :available_quantity, :order_quantity
end
