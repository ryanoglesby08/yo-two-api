class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  layout :false

  rescue_from ActionController::ParameterMissing do |exception|
    render_errors :bad_request, exception.message
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render_errors :not_found, exception.message
  end

  def render_errors(status, *errors)
    @errors = [errors].flatten
    render 'shared/errors', status: status
  end
end
