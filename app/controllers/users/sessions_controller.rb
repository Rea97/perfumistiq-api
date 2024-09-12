# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    include RackSessionsFix

    def respond_with(current_user, _opts = {})
      render json: UserBlueprint.render(
        current_user,
        root: :data,
        # return token in the body instead of response header but it's not recommended
        meta: { token: request.env['warden-jwt_auth.token'] }
      ), status: :ok
    end

    def respond_to_on_destroy
      if current_user
        render json: {
          status: 200,
          message: 'Logged out successfully.'
        }, status: :ok
      else
        render json: {
          status: 401,
          message: "Couldn't find an active session."
        }, status: :unauthorized
      end
    end
  end
end
