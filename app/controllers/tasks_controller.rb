class TasksController < ApplicationController

  def index
    @tasks = Task.all

    respond_to do |format|
      format.json { render json: @tasks }
    end
  end

  def create
    @task = Task.create task_params

    respond_to do |format|
      format.json { render json: @task }
    end
  end

  def update
    @task = Task.find params[:id]
    @task.update task_params

    respond_to do |format|
      format.json { render json: @task }
    end
  end

  def destroy
    @task = Task.find params[:id]
    @task.destroy

    respond_to do |format|
      format.json
    end
  end

  private
  def task_params
    params.require(:task).permit(:description, :completed)
  end
end
