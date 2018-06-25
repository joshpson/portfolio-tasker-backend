class Api::V1::ProjectsController < ApplicationController

  before_action :find_project, only:[:update, :show, :destroy]

  def index
    @projects = Project.all
    render json: @projects
  end

  def create
    @project = Project.create(project_params)
    render json: @project, status: :accepted
  end

  def update
    @project.update(project_params)
    render json: @project, status: :accepted
  end

  def show
    render json: @project
  end

  def destroy
    @project.destroy
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :status, :user_id)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
