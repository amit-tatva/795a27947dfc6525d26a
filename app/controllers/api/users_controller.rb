module Api
    class UsersController < ApplicationController
        before_action :check_user, only: [:show, :update, :destroy]

        #GET /api/users - returns all users from users table
        def index
            @users = User.all
            render json: @users
        end

        #GET /api/user/:id - returns specific user from users table given id
        def show
            render json: @user
        end

        #POST /api/user - adds a new user to the users table
        def create
            @user = User.new(user_params)
            if @user.save
                render json: { user: @user, message: "User created successfully."}, status: :created
            else
                render json: @user.errors, status: :unprocessable_entity
            end
        end

        #PUT /api/user/:id - updates specific user in users table
        def update
            if @user.update(user_params)
                render json: { user: @user, message: "User updated successfully."}, status: :ok
            else
                render json: @user.errors, status: :unprocessable_entity
            end
        end

        #DELETE /api/user/:id - removes the specific user from users table with the given id
        def destroy
            if @user.destroy
                render json: { message: "User deleted successfully."}, status: :ok
            else
                render json: @user.errors, status: :unprocessable_entity
            end
        end

        private
        #only allow a trusted parameters 'white list' through
        def user_params
            params.require(:user).permit(:firstName, :lastName, :email)
        end

        #Check if user does not exists in database
        def check_user
            @user = User.find(params[:id])
            return render json: { message: "Record not found."} unless @user.present?
        end
    end
end
