class Auction < ApplicationRecord
    belongs_to :item
    has_many :bids
    has_many :users, through: :bids
    has_one :user, through: :item
end
