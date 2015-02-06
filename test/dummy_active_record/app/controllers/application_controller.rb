class ApplicationController < ActionController::Base
  protect_from_forgery

  helper :request_protocol

  def request_protocol
    Rails.env == 'development' ? 'http' : 'https'
  end
end
