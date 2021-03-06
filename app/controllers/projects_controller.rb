class ProjectsController < ApplicationController
  before_action :find_project, only:[:show, :edit, :update, :destroy]


  def index
    if params[:stage]
      @projects = Project.where(stage: params[:stage])
    else
      @projects = Project.all
    end
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
    redirect_to projects_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end


  private
  def project_params
    params.require(:project).permit(:name, :stage, :description)
  end

  def find_project
    @project = Project.find(params[:id])
  end

end
