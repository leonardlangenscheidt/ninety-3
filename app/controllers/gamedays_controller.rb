class GamedaysController < ApplicationController
  before_action :set_gameday, only: [:show, :edit, :update, :destroy]

  # GET /gamedays
  # GET /gamedays.json
  def index
    @gamedays = Gameday.all
  end

  # GET /gamedays/1
  # GET /gamedays/1.json
  def show
  end

  # GET /gamedays/new
  def new
    @gameday = Gameday.new
  end

  # GET /gamedays/1/edit
  def edit
  end

  # POST /gamedays
  # POST /gamedays.json
  def create
    @gameday = Gameday.new(gameday_params)

    respond_to do |format|
      if @gameday.save
        format.html { redirect_to gamedays_path, notice: 'Gameday was successfully created.' }
        format.json { render :show, status: :created, location: @gameday }
      else
        format.html { render :new }
        format.json { render json: @gameday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamedays/1
  # PATCH/PUT /gamedays/1.json
  def update
    respond_to do |format|
      if @gameday.update(gameday_params)
        format.html { redirect_to @gameday, notice: 'Gameday was successfully updated.' }
        format.json { render :show, status: :ok, location: @gameday }
      else
        format.html { render :edit }
        format.json { render json: @gameday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamedays/1
  # DELETE /gamedays/1.json
  def destroy
    @gameday.destroy
    respond_to do |format|
      format.html { redirect_to gamedays_url, notice: 'Gameday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameday
      @gameday = Gameday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gameday_params
      params.require(:gameday).permit(:number, :league_id)
    end
end
