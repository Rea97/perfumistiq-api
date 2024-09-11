# frozen_string_literal: true

class PerfumesController < ApplicationController
  before_action :set_perfume, only: %i[show update destroy]

  # GET /perfumes
  def index
    @perfumes = Perfume.all

    render json: @perfumes
  end

  # GET /perfumes/1
  def show
    render json: @perfume
  end

  # POST /perfumes
  def create
    @perfume = Perfume.new(perfume_params)

    if @perfume.save
      render json: @perfume, status: :created, location: @perfume
    else
      render json: @perfume.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /perfumes/1
  def update
    if @perfume.update(perfume_params)
      render json: @perfume
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
