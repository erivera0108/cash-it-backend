class Api::V1::UsersController < ApplicationController
    def index
        users = User.all.with_attached_image
        render json: users.map { |user| 
            user.as_json.merge({image: user.image_url })
        }
    end

    def show
        user = User.find(params[:id])
        render json: user.as_json.merge({
            image: url_for(user.image)
        })
    end

    def create
        user = User.create!(user_params(:name, :username, :password_digest))
        render json: user
    end

    private
    def user_params(*args)
        params.require(:user).permit(*args)
    end
end
