class CompetitionsController < ApplicationController

  def index
    @competitions = Competition.all # not plural, model is named Competition
  end

end
