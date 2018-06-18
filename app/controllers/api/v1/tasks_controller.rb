class Api::V1::TasksController < ApplicationController

  before_action :find_task, only:[:update, :show]

  def index
    @tasks = Task.all
    render json: @tasks.to_json
  end

  def create
    @task = Task.create(task_params)
    render json: @task, status: :accepted
  end

  def update
    @task.update(task_params)
    render json: @task, status: :accepted
  end

  def show
    render json: @task
  end

  private

  def task_params
    params.require(:task).permit(:description, :due_date, :project_id, :user_id, :status)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
