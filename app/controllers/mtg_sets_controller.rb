class MtgSetsController < ApplicationController
  before_action :set_mtg_set, only: [:show, :edit, :update, :destroy]

  # GET /mtg_sets
  # GET /mtg_sets.json
  def index
    @mtg_sets = MtgSet.all
  end

  # GET /mtg_sets/1
  # GET /mtg_sets/1.json
  def show
  end

  # GET /mtg_sets/new
  def new
    @mtg_set = MtgSet.new
  end

  # GET /mtg_sets/1/edit
  def edit
  end

  # POST /mtg_sets
  # POST /mtg_sets.json
  def create
    @mtg_set = MtgSet.new(mtg_set_params)

    respond_to do |format|
      if @mtg_set.save
        format.html { redirect_to @mtg_set, notice: 'Mtg set was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mtg_set }
      else
        format.html { render action: 'new' }
        format.json { render json: @mtg_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mtg_sets/1
  # PATCH/PUT /mtg_sets/1.json
  def update
    respond_to do |format|
      if @mtg_set.update(mtg_set_params)
        format.html { redirect_to @mtg_set, notice: 'Mtg set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mtg_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtg_sets/1
  # DELETE /mtg_sets/1.json
  def destroy
    @mtg_set.destroy
    respond_to do |format|
      format.html { redirect_to mtg_sets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mtg_set
      @mtg_set = MtgSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mtg_set_params
      params.require(:mtg_set).permit(:name, :code, :releaseDate, :border, :type, :block)
    end
end
