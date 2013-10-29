class ProjectsController < ApplicationController
  def create
    @project = Project.new(params[:project])
    @project.save!

    respond_to do |format|
      format.html do
        redirect_to root_url, notice: "Success!"
      end
    end
  end

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.js
    end
  end
end
