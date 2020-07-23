class Api::V1::UsersController < ApplicationController
    def index
        users = User.all.with_attached_image
        render json: users.map { |user| 
            mushroom.as_json.merge({image_url: user.image_url })
        }
    end

    # def index
    #     mushrooms = Mushroom.all.with_attached_image
    #     render json: mushrooms.map { |mushroom|
    #     mushroom.as_json.merge({ image_url: mushroom.image_url })
    #     }
    # end

    def show
        user = User.find(params[:id])
        render json: user.as_json.merge({
            image: url_for(user.image)
        })
    end

    # def show
    #     mushroom = Mushroom.find(params[:id]) 
    #     render json: mushroom.as_json.merge({ 
    #         image: url_for(mushroom.image),
    #          health_benefits: (mushroom.health_benefits),
    #          mush_health: (mushroom.mush_health_benefits),
    #          comments: (mushroom.comments),
    #          users: (mushroom.users) 
    #         })
    # end

    def create
        user = User.create!(user_params(:name, :username, :password_digest))
        render json: user
    end

    private
    def user_params(*args)
        params.require(:user).permit(*args)
    end
end
