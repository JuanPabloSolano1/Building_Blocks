class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
   @projects = Project.all
  end

  def show
   @project = Project.find(params[:id])
  end

  def new
   @project = Project.new
   authorize @project
  end

  def create
   # @project = Project.find(params[:id])
   @project = Project.new(project_params)
   @project.save
   redirect_to projects_path
   authorize @project
  end

  def update
   @project = Project.find(params[:id])
   @project.update(project_params)
   redirect_to projects_path
   authorize @project
  end

  def destroy
   @project = Project.find(params[:id])
   @project.destroy
   redirect_to projects_path
   authorize @project
  end

  def edit
   @project = Project.find(params[:id])
   authorize @project
  end

  def project_params
   params.require(:project).permit(:name, :description, :url, :photo)
  end
end
