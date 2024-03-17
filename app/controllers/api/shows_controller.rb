class Api::ShowsController < ApplicationController
    wrap_parameters include: Show.attribute_names + ['venue', 'location']
    
    def create
        @show = Show.new(show_params)
        if @show.save 
            render :show
        else 
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    def show_params
        params.require(:user).permit(:venue, :location, :date)
    end
  end