class CanvasItemsController < ApplicationController
  before_action :set_canvas_item, only: [:show, :edit, :update, :destroy]

  # GET /canvas_items
  # GET /canvas_items.json
  def index
    @canvas_items = CanvasItem.all
  end

  # GET /canvas_items/1
  # GET /canvas_items/1.json
  def show
  end

  # GET /canvas_items/new
  def new
    @canvas_item = CanvasItem.new
    if params[:canvas]
      @canvas = Canvas.find_by(slug: params[:canvas])
    end
    if params[:step]
      @step = CanvasItemType.find_by(position: params[:step])
    end
    if params[:canvas] and params[:step]
      @canvas = Canvas.find_by(slug: params[:canvas])
      @step = CanvasItemType.find_by(position: params[:step])
      @canvas_step_items = CanvasItem.where(canvas_id: @canvas, canvas_item_type_id: @step.id)
    end
  end

  # GET /canvas_items/1/edit
  def edit
  end

  # POST /canvas_items
  # POST /canvas_items.json
  def create
    @canvas_item = CanvasItem.new(canvas_item_params)

    respond_to do |format|
      if @canvas_item.save
        # format.js
        format.html { redirect_to new_canvas_item_path(canvas: @canvas_item.canvas.slug, step: @canvas_item.canvas_item_type.position), notice: 'Canvas item was successfully created.' }
        # format.json { render :show, status: :created, location: @canvas_item }
      else
        format.html { render :new }
        format.json { render json: @canvas_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canvas_items/1
  # PATCH/PUT /canvas_items/1.json
  def update
    respond_to do |format|
      if @canvas_item.update(canvas_item_params)
        format.html { redirect_to @canvas_item, notice: 'Canvas item was successfully updated.' }
        format.json { render :show, status: :ok, location: @canvas_item }
      else
        format.html { render :edit }
        format.json { render json: @canvas_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canvas_items/1
  # DELETE /canvas_items/1.json
  def destroy
    @canvas_item.destroy
    respond_to do |format|
      format.html { redirect_to canvas_items_url, notice: 'Canvas item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canvas_item
      @canvas_item = CanvasItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canvas_item_params
      params.require(:canvas_item).permit(:canvas_item_type_id, :canvas_id, :user_id, :name, :description)
    end
end
