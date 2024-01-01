class Api::V1::ProjectsController < ApplicationController
  def index
    @projects = Project.limit(params[:limit]).order("created_at ASC")
  end
end
