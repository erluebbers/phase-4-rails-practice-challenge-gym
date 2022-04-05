class GymsController < ApplicationController

  def show
    gym = Gym.find(params[:id])
    render json: gym
  end 

  def destroy
    gym = Gym.find(params[:id])
    if gym
      gym.destroy
      render json: {}
    else 
      render json: { error: "Gym not found" }, status: :not_found
    end
  end


end
