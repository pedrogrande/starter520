class CanvassesController < ApplicationController
  before_action :set_canvas, only: [:show, :edit, :update, :destroy]

  # GET /canvasses
  # GET /canvasses.json
  def index
    @canvasses = Canvas.all
  end

  # GET /canvasses/1
  # GET /canvasses/1.json
  def show
  end

  # GET /canvasses/new
  def new
    @canvas = Canvas.new
  end

  # GET /canvasses/1/edit
  def edit
  end

  # POST /canvasses
  # POST /canvasses.json
  def create
    @canvas = Canvas.new(canvas_params)

    respond_to do |format|
      if @canvas.save
        format.html { redirect_to new_canvas_item_path(canvas: @canvas.slug, step: 1), notice: 'Canvas was successfully created.' }
        format.json { render :show, status: :created, location: @canvas }
      else
        format.html { render :new }
        format.json { render json: @canvas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canvasses/1
  # PATCH/PUT /canvasses/1.json
  def update
    respond_to do |format|
      if @canvas.update(canvas_params)
        format.html { redirect_to @canvas, notice: 'Canvas was successfully updated.' }
        format.json { render :show, status: :ok, location: @canvas }
      else
        format.html { render :edit }
        format.json { render json: @canvas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canvasses/1
  # DELETE /canvasses/1.json
  def destroy
    @canvas.destroy
    respond_to do |format|
      format.html { redirect_to canvasses_url, notice: 'Canvas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canvas
      @canvas = Canvas.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canvas_params
      params.require(:canvas).permit(:name, :slug)
    end
end
