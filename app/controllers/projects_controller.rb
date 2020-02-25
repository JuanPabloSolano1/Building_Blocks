class ProjectsController < ApplicationController
  def index
   @projects = Project.all
  end

  def show
   @project = Project.find(params[:id])
  end

  def new
   @project = Project.new
  end

  def create
   # @project = Project.find(params[:id])
   @project = Project.new(project_params)
   @project.save
   redirect_to projects_path
  end

  def update


  end

  def destroy


  end

  def project_params
   params.require(:project).permit(:name, :description, :url, :photo)
  end
end
