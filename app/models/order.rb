class Order < ApplicationRecord

    attr_accessor :products

    has_many :positions
    has_many :products, :through => :positions

    validates :customer_name, :customer_phone, :presence => { :message => "can't be empty" }
end
