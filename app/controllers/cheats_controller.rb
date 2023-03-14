class CheatsController < ApplicationController

  def index
    @cheats = Cheat.all
  end
  
end
