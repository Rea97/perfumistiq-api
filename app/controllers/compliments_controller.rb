# frozen_string_literal: true

class ComplimentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_compliment, only: %i[show update destroy]

  # GET /compliments
  def index
    @compliments = current_user.compliments

    render json: ComplimentBlueprint.render(@compliments, view: :extended, root:)
  end

  # GET /compliments/1
  def show
    render json: ComplimentBlueprint.render(@compliment, view: :extended, root:)
  end

  # POST /compliments
  def create
    @compliment = Compliment.new(compliment_params)
    @compliment.user = current_user

    if @compliment.save
      render json: ComplimentBlueprint.render(@compliment, view: :extended, root:), status: :created
    else
      render json: @compliment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /compliments/1
  def update
    if @compliment.update(compliment_params.slice(:comment))
      render json: ComplimentBlueprint.render(@compliment, view: :extended, root:)
    else
      render json: @compliment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /compliments/1
  def destroy
    @compliment.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_compliment
    @compliment = Compliment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def compliment_params
    params.require(:compliment).permit(:user_id, :perfume_id, :comment)
  end
end
