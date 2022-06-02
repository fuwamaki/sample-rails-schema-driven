class SampleController < ApplicationController
    protect_from_forgery except: [:create, :delete]
    before_action :set_post, only: [:show, :update, :destroy]

    def index
        users = User.order(created_at: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded users', data: users }
    end

    def show
        render json: { status: 'SUCCESS', message: 'Loaded the users', data: @user }
    end

    def create
        user = User.new(user_params)
        if user.save
        render json: { status: 'SUCCESS', data: user }
        else
        render json: { status: 'ERROR', data: user.errors }
        end
    end

    def destroy
        @user.destroy
        render json: { status: 'SUCCESS', message: 'Deleted user', data: @user }
    end

    def update
        if @post.update(post_params)
        render json: { status: 'SUCCESS', message: 'Updated user', data: @user }
        else
        render json: { status: 'SUCCESS', message: 'Not updated', data: @user.errors }
        end
    end

    private

    def set_post
        @post = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name)
    end
end
