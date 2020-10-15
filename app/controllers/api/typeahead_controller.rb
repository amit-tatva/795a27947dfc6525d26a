module Api
    class TypeaheadController < ApplicationController
        def show
            if params[:input]
                @users = User.custom(params[:input])
                if @users.present?
                    render json: @users, message: "List of mached users."
                else
                    render json: {message: "No users matched."}
                end
            end
        end
    end
end
