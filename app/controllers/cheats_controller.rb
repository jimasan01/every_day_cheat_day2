class CheatsController < ApplicationController

  def index
    @cheats = Cheat.all
  end
  
  def new
    @cheat = Cheat.new
  end

  def create
    Cheat.create(cheat_params)
  end

  def destroy
    cheat = Cheat.find(params[:id])
    cheat.destroy
  end

  private
  
  def cheat_params
    params.require(:cheat).permit(:name, :image, :explanation)
  end

end
