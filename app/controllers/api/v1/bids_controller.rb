class Api::V1::BidsController < ApplicationController
    def index
        bids = Bid.all
        render json: bids
    end

    def create
        bid = Bid.create!(bid_params(:item_id, :user_id, :offer))
        render json: bid
    end

    private
    def bid_params(*args)
        params.require(:bid).permit(*args)
    end
end
