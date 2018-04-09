class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter do |controller|
  authenticate if Rails.env.production?
end

def authenticate
  authenticate_or_request_with_http_basic do |username, password|
    username == ENV["auth_user"] && password == ENV["auth_password"]
  end
end

end
