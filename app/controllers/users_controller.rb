class UsersController < ApplicationController

    def index
        @users=User.all
        render json: @users
    end

    def profile
        render json: { user: current_user, dogs: current_user.dogs }, status: :accepted
    end

    def show
      user=User.find(params[:id])
      render json: user
    end
  
    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token({ user_id: @user.id })
        render json: { user: @user, jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
