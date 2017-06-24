class BatsController < ApplicationController
  def index
    @bats = Bat.all
    render :index
  end
end
