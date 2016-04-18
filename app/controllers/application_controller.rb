class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def status
    data = {payload: {service: "clickstream"}, meta: {message: "Service running!!"}}
    render json: data, status: :ok
  end
end
