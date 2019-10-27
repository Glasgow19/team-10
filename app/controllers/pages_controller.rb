class PagesController < ApplicationController
  def index
  end

  def floor_view
    @zones = Floor.floor_zones params[:id]
  end

  def zones_view
    @exhibits = Zone.zone_exhibits params[:id]
  end

  def exhibits_view 
      @tags = Exhibit.exhibit_tags params[:id]
  end
end
