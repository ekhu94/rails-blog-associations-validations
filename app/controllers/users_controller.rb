class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]

    def index
        @users = User.all
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name)
    end
end
