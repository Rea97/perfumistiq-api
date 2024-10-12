# frozen_string_literal: true

class MyPerfumesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_list

  # GET /my_perfumes
  def index
    @perfumes = @list.perfumes
    render json: PerfumeBlueprint.render(@perfumes, root:)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @list = current_user.lists.where(type_of: :i_have).first
  end
end
