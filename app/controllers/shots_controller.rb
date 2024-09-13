# frozen_string_literal: true

class ShotsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shot, only: %i[show destroy]

  # GET /shots
  def index
    @shots = Shot.all

    render json: ShotBlueprint.render(@shots, view: :extended, root:)
  end

  # GET /shots/1
  def show
    render json: ShotBlueprint.render(@shot, view: :extended, root:)
  end

  # POST /shots
  def create
    @shot = Shot.new(shot_params)
    @shot.user = current_user

    if @shot.save
      render json: ShotBlueprint.render(@shot, view: :extended, root:), status: :created, location: @shot
    else
      render json: @shot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shots/1
  def destroy
    @shot.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_shot
    @shot = Shot.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def shot_params
    params.require(:shot).permit(:perfume_id)
  end
end
