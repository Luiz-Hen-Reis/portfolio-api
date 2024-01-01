class Api::V1::InstitutionsController < ApplicationController
  def index
    @institutions = Institution.all
  end
end
