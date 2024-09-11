# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    include RackSessionsFix

    private

    def respond_with(current_user, _opts = {})
      if resource.persisted?
        render json: {
          status: { code: 200, message: 'Signed up successfully.' },
          data: current_user
        }
      else
        render json: {
          errors: current_user.errors.full_messages
        }, status: :unprocessable_entity
      end
    end
  end
end
