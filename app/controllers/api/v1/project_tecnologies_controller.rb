class Api::V1::ProjectTecnologiesController < ApplicationController
  def index
    @projects = Project.limit(params[:limit]).order("created_at ASC")
    @tecnologies = Tecnology.limit(params[:limit]).order("created_at ASC")
    @institutions = Institution.all
  end
end
