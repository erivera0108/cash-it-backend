class User < ApplicationRecord
    has_many :bids 
    has_many :items
end
