class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @action = CreatesProject.new(name: params[:name], task_string: params[:tasks])
    success = @action.create
    if success
    redirect_to projects_path
    else
      @project = @action.project
      render :new
    end
  end
end
