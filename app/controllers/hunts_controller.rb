class HuntsController < ApplicationController
  before_action :set_hunt, only: [:show, :start]

  def index
    active = params[:active]
    @hunts = active.nil? ? Hunt.all : Hunt.where(active: active)
  end

  def show
  end

  def create
    @hunt = Hunt.new(hunt_params)

    if @hunt.save
      render :show, status: :created, location: @hunt
    else
      render_errors :unprocessable_entity, @hunt.errors.full_messages
    end
  end

  def start
    @hunt.update(active: true)

    render :show, status: :ok, location: @hunt
  end

  private
    def hunt_params
      params.require(:hunt).permit(:name)
    end

    def set_hunt
      @hunt = Hunt.find(params[:id])
    end
end
