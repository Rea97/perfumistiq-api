# frozen_string_literal: true

class ComplainsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_complain, only: %i[show update destroy]

  # GET /complains
  def index
    @complains = current_user.complains

    render json: ComplainBlueprint.render(@complains, view: :extended, root:)
  end

  # GET /complains/1
  def show
    render json: ComplainBlueprint.render(@complain, view: :extended, root:)
  end

  # POST /complains
  def create
    @complain = Complain.new(complain_params)
    @complain.user = current_user

    if @complain.save
      render json: ComplainBlueprint.render(@complain, view: :extended, root:), status: :created
    else
      render json: @complain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /complains/1
  def update
    if @complain.update(complain_params.slice(:comment))
      render json: ComplainBlueprint.render(@complain, view: :extended, root:)
    else
      render json: @complain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /complains/1
  def destroy
    @complain.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_complain
    @complain = Complain.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def complain_params
    params.require(:complain).permit(:perfume_id, :comment)
  end
end
