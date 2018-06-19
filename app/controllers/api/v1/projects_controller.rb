class Api::V1::ProjectsController < ApplicationController

  before_action :find_project, only:[:update, :show]

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

  private

  def project_params
    params.require(:project).permit(:title, :description, :status)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
