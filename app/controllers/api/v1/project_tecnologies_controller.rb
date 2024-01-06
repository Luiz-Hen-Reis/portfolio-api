class Api::V1::ProjectTecnologiesController < ApplicationController
  def index
    @projects = Project.all
    @tecnologies = Tecnology.all
    @institutions = Institution.all
  end
end
