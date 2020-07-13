class Api::V1::ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items
    end

    def show
        item = Item.find(params[:id])
        render json: item
    end

    def create
        item = Item.create!(item_params(:category, :user_id))
        render json: item
    end
    
    def destroy
        item = Item.find(params[:id])
        item.destroy
    end

    private
    def item_params(*args)
        params.require(:item).permit(*args)
    end
end

