class User < ApplicationRecord
    has_many :items
    has_many :bids
    has_many :auctions, through: :bids
    has_one :auction, through: :items
end
