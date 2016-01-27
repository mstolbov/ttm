class WelcomeController < ApplicationController
  def index
    @tasks = Task.includes(:user).page(params[:page])
  end
end
