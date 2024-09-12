# frozen_string_literal: true

class ApplicationController < ActionController::API
  def root
    :data
  end
end
