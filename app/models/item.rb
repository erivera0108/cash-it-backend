class Item < ApplicationRecord
    belongs_to :user
    has_many :bids
    has_many :users, through: :bids

    has_one_attached :image

    def image_url
        Rails.application.routes.url_helpers.rails_blob_path(self.image, only_path:true)
    end

end
