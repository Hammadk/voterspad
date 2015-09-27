class ElectionsController < ApplicationController
  before_action :set_election, only: [:show]
  def index
  end

  def show
  end

  private

  def set_election
    @election = Election.find_by!(slug: params[:id])
  end
end
