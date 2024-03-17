class Api::ShowsController < ApplicationController
    wrap_parameters include: Show.attribute_names + ['venue', 'location']

    def index 
        @shows = Show.all 
        render :index
    end

    def show
        @show = Show.find(params[:id])
        render :show
    end

    def update
        @show = Show.find(params[:id])
        if @show.update(show_params)
            @shows = Show.all 
            render json: :index
        else  
            render json: {errors:@event.errors.full_messages},status: 422
        end
    end

    def destroy
        @show = Show.find(params[:id])
        @show.destroy
    end

    def create
        @show = Show.new(show_params)
        if @show.save 
            render :show
        else 
            render json: { errors: @show.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    def show_params
        params.require(:show).permit(:venue, :location, :date)
    end
end