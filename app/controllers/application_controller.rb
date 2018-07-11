class ApplicationController < ActionController::Base
  before_action :get_canvas_item_types

  def get_canvas_item_types
    @canvas_item_types = CanvasItemType.all
  end

end
