class TasksController < ApplicationController
  def new
    @task = current_user.tasks.new
  end

  def show
    @task = current_user.tasks.find(params[:id])
  end

  def edit
    @task = current_user.tasks.find(params[:id])
  end

  def create
    @task = current_user.tasks.new task_params
    if @task.save
      flash_success
      redirect_to dashboard_path
    else
      flash_error
      render :new
    end
  end

  def update
    @task = current_user.tasks.find(params[:id])
    if @task.update task_params
      flash_success
      redirect_to dashboard_path
    else
      flash_error
      render :edit
    end
  end

  def destroy
    task = current_user.tasks.find(params[:id])
    task.destroy
    flash_success
    redirect_to dashboard_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :state_event)
  end
end
