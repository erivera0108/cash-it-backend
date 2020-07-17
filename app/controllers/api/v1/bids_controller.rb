class Api::V1::BidsController < ApplicationController
    def index
        bids = Bid.all
        render json: bids
    end

    def show
        bid = Bid.find(params[:id])
        render json: bid
    end

    def create
        bid = Bid.create!(bid_params(:item_id, :user_id, :offer))
        render json: bid
    end
    
    def destroy
        bid = Bid.find(params[:id])
        bid.destroy
    end

    def update
        bid = Bid.find(params[:id])
        puts bid
        bid.update(bid_params)
        render json: bid
    end

    private
    def bid_params(*args)
        params.require(:bid).permit(:item_id, :offer, :accepted, :user_id)
    end
end

# t.integer "user_id"
#     t.integer "item_id"
#     t.integer "offer"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.boolean "accepted"