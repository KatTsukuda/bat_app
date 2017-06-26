class BatsController < ApplicationController
  def index
    @bats = Bat.all
  end

  def new
    @bat = Bat.new
  end

  def create
    bat = Bat.new(bat_params)

    if bat.save
      redirect_to bat_path(bat)
    end
  end

  def show
    id = params[:id]

    @bat = Bat.find(id)
  end

  def edit
    id = params[:id]

    @bat = Bat.find(id)
  end

  def update
    id = params[:id]

    bat = Bat.find(id)

    bat.update_attributes(bat_params)

    redirect_to bat_path(bat)
  end

  def destroy
    id = params[:id]

    @bat = Bat.find(id)

    @bat.destroy

    redirect_to "/bats"
  end

  private

 def bat_params
   # whitelist params return whitelisted version
   params.require(:bat).permit(:name, :description)
 end

end
