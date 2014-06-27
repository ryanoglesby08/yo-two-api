class HuntersController < ApplicationController
  def index
    @hunters = Hunter.where(hunt_id: params[:hunt_id])
  end

  def show
    @hunter = Hunter.find(params[:id])
  end

  def create
    hunt = Hunt.find(params[:hunt_id])

    unless hunt.active
      render_errors(:bad_request, "Unable to start hunting. Hunt '#{hunt.name}' is not active") and return
    end

    @hunter = hunt.hunters.build(start_time: Time.now)

    if @hunter.save
      render :show, status: :created, location: [hunt, @hunter]
    else
      render_errors :unprocessable_entity, @hunter.errors.full_messages
    end
  end
end
