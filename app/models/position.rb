class Position < ApplicationRecord
    belongs_to :product
    belongs_to :order
end
