class ProjectsController < ApplicationController

  PROJECTS =[
            {name: "Expo2020", stage: "design"},
            {name: "JBR", stage: "construction"},
            {name: "JLT", stage: "construction"},
            {name: "Atlantis", stage: "finished"}]

  def index
    if params[:filter]
      @projects = PROJECTS.select {|project| project[:stage] == params[:filter]}
    else
     @projects =PROJECTS
    end
  end

  def show
    @project = PROJECTS[params[:id].to_i]
  end

end
