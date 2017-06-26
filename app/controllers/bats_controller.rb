class BatsController < ApplicationController
  def index
    @bats = Bat.all
    render :index
  end

  def new
    @bat = Bat.new
    render :new
  end

  def create
    bat_params = params.require(:bat).permit(:name, :description)
    @bat = Bat.new(bat_params)
    if @bat.save
      redirect_to post_path(post.id)
    end
  end

  def show
    id = params[:id]
    @bat = Bat.find(id)
    render :show
  end

end
