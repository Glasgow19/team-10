class PagesController < ApplicationController
  def index
  end

  def floor_view
    @zones = Floor.floor_zones params[:id]
  end
end
