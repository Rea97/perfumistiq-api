# frozen_string_literal: true

class PerfumesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_perfume, only: %i[show update destroy]

  # GET /perfumes
  def index
    @perfumes = Perfume.all

    render json: PerfumeBlueprint.render(@perfumes, root:)
  end

  # GET /perfumes/1
  def show
    render json: PerfumeBlueprint.render(@perfume, root:)
  end

  # POST /perfumes
  def create
    @perfume = Perfume.new(perfume_params)

    if @perfume.save
      render json: PerfumeBlueprint.render(@perfume, root:), status: :created, location: @perfume
    else
      render json: @perfume.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /perfumes/1
  def update
    if @perfume.update(perfume_params)
      render json: PerfumeBlueprint.render(@perfume, root:)
    else
      render json: @perfume.errors, status: :unprocessable_entity
    end
  end

  # DELETE /perfumes/1
  def destroy
    @perfume.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_perfume
    @perfume = Perfume.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def perfume_params
    params.require(:perfume).permit(:name, :designer_house, :type_of)
  end
end
