class User < ApplicationRecord
    has_many :bids 
    has_many :items
    has_one :auction, through: :items
    has_one :auction, through: :bids
end
