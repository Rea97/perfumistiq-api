# frozen_string_literal: true

class ListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_list, only: %i[show update destroy]

  # GET /lists
  def index
    @lists = current_user.lists.includes(:perfumes)

    render json: ListBlueprint.render(@lists, root:)
  end

  # GET /lists/1
  def show
    render json: ListBlueprint.render(@list, root:)
  end

  # POST /lists
  def create
    @list = List.new(list_params.except(:perfumes_ids))
    @list.user = current_user
    @list.perfumes = Perfume.where(id: list_params[:perfumes_ids])

    if @list.save
      render json: ListBlueprint.render(@list, root:), status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  def update
    if @list.update(list_params)
      render json: ListBlueprint.render(@list, root:)
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  def destroy
    @list.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @list = List.find(params[:id])
    # basic authorization to avoid user from accessing other user's list
    raise ActiveRecord::RecordNotFound if current_user.id != @list.user_id
  end

  # Only allow a list of trusted parameters through.
  def list_params
    params.require(:list).permit(
      :name,
      perfumes_ids: []
    )
  end
end
