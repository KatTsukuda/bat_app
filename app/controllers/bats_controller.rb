class BatsController < ApplicationController
  def index
    @bats = Bat.all
    render :index
  end

  def create
    bat_params = params.require(:bat).permit(:name, :description)
    @bat = Bat.new(bat_params)
    if @bat.save
      redirect_to "/bats/#{bat.id}"
    end
  end

  def new
    @bat = Bat.new
    render :new
  end

  def show
    id = params[:id]
    @bat = Bat.find(id)
    render :show
  end

  def edit
    id = params[:id]
    @bat = Bat.find(id)
    render :edit
  end

  def update
    id = params[:id]
    bat = Bat.find(id)

    updated_attributes = params.require(:bat).permit(:name, :description)
    bat.update_attributes(updated_attributes)
    redirect_to edit_bat_path
  end

  def destroy
    id = params[:id]
    @bat = Bat.find(id)
    @bat.destroy
    redirect_to "/bats"
  end

end
