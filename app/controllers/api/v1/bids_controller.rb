class Api::V1::BidsController < ApplicationController
    def index
        bids = Bid.all
        render json: bids
    end
end
