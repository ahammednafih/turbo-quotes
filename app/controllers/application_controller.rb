# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?
  before_action :set_current_user, if: :user_signed_in?

  private

    def set_current_user
      Current.user = current_user
    end
end
