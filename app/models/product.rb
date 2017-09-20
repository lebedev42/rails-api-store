class Product < ApplicationRecord

    attr_accessor :order_quantity

    has_many :positions
    has_many :orders, :through => :positions
end
