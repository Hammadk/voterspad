class ElectionsController < ApplicationController
  def index
  end

  def show
  end

  private

  def election
    @election = Election.find_by!(slug: params[:id])
  end
  helper_method :election
end
