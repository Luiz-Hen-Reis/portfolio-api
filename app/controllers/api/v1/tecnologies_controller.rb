class Api::V1::TecnologiesController < ApplicationController
  def index
    @tecnologies = Tecnology.limit(params[:limit]).order("created_at ASC")
  end
end
