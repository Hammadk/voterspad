class ElectionsController < ApplicationController
  before_action :set_election, only: [:show]
  def index
  end

  def show
    @questions = @election.questions
  end

  private

  def set_election
    @election = Election.find_by!(slug: params[:id])
  end
end
