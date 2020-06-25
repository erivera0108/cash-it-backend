class Auction < ApplicationRecord
    belongs_to :item
    has_many :bids
end
