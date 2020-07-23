class Item < ApplicationRecord
    belongs_to :user
    has_many :bids
    has_many :users, through: :bids

    has_one_attached :image
end
