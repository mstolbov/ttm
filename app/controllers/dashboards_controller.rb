class DashboardsController < ApplicationController
  def show
    @tasks = current_user.tasks.page(params[:page])
  end
end
