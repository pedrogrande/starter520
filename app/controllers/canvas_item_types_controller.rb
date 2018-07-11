class CanvasItemTypesController < ApplicationController
  before_action :set_canvas_item_type, only: [:show, :edit, :update, :destroy]

  # GET /canvas_item_types
  # GET /canvas_item_types.json
  def index
    @canvas_item_types = CanvasItemType.all
  end

  # GET /canvas_item_types/1
  # GET /canvas_item_types/1.json
  def show
  end

  # GET /canvas_item_types/new
  def new
    @canvas_item_type = CanvasItemType.new
  end

  # GET /canvas_item_types/1/edit
  def edit
  end

  # POST /canvas_item_types
  # POST /canvas_item_types.json
  def create
    @canvas_item_type = CanvasItemType.new(canvas_item_type_params)

    respond_to do |format|
      if @canvas_item_type.save
        format.html { redirect_to @canvas_item_type, notice: 'Canvas item type was successfully created.' }
        format.json { render :show, status: :created, location: @canvas_item_type }
      else
        format.html { render :new }
        format.json { render json: @canvas_item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canvas_item_types/1
  # PATCH/PUT /canvas_item_types/1.json
  def update
    respond_to do |format|
      if @canvas_item_type.update(canvas_item_type_params)
        format.html { redirect_to @canvas_item_type, notice: 'Canvas item type was successfully updated.' }
        format.json { render :show, status: :ok, location: @canvas_item_type }
      else
        format.html { render :edit }
        format.json { render json: @canvas_item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canvas_item_types/1
  # DELETE /canvas_item_types/1.json
  def destroy
    @canvas_item_type.destroy
    respond_to do |format|
      format.html { redirect_to canvas_item_types_url, notice: 'Canvas item type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canvas_item_type
      @canvas_item_type = CanvasItemType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canvas_item_type_params
      params.require(:canvas_item_type).permit(:name, :description, :question, :position)
    end
end
