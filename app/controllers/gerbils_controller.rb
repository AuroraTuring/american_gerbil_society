class GerbilsController < ApplicationController

  def index
    @gerbils = Gerbil.all
  end

end
