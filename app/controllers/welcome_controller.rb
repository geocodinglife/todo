class WelcomeController < ApplicationController
  def index
    render json: {message: "Welcome Home!"}
  end
end
