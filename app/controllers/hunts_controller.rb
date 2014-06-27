class HuntsController < ApplicationController
  def index
    active = params[:active]
    @hunts = active.nil? ? Hunt.all : Hunt.where(active: active)
  end

  def show
    @hunt = Hunt.find(params[:id])
  end

  def create
    @hunt = Hunt.new(hunt_params)

    if @hunt.save
      render :show, status: :created, location: @hunt
    else
      render json: @hunt.errors, status: :unprocessable_entity
    end
  end

  private
    def hunt_params
      params.require(:hunt).permit(:name)
    end
end
