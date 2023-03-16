class CheatsController < ApplicationController
  before_action :set_cheat, only: [:edit, :show]


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

  def edit
  end

  def update
    cheat = Cheat.find(params[:id])
    cheat.update(cheat_params)
  end

  def show
  end
  
  private
  
  def cheat_params
    params.require(:cheat).permit(:name, :image, :explanation)
  end

  def set_cheat
    @cheat = Cheat.find(params[:id])
  end

end
