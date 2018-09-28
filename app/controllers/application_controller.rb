class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "Testing, 1, 2, 3..."
end
