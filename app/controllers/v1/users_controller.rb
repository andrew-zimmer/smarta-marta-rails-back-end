module V1
    class UsersController < ApplicationController
        def create
            @user = User.new(user_params)
            if @user.save
                render :create
            else
                render json: {errors: @user.errors.full_messages}
            end
        end

        private
        def user_params
            params.require(:user).permit(:email, :password, :password_confirmation, :username)
        end
    end
end
