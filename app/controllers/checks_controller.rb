require 'check_runner'

class ChecksController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    host = project.hosts.find(params[:host_id])

    @check = CheckRunner.new(host).execute
    puts @check
    render :nothing
  end
end
