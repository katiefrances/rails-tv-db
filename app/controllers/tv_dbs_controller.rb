class TvDbsController < ApplicationController
  before_action :set_tv_db, only: [:show, :edit, :update, :destroy]

  # GET /tv_dbs
  # GET /tv_dbs.json
  def index
    @tv_dbs = TvDb.all
  end

  # GET /tv_dbs/1
  # GET /tv_dbs/1.json
  def show
  end

  # GET /tv_dbs/new
  def new
    @tv_db = TvDb.new
  end

  # GET /tv_dbs/1/edit
  def edit
  end

  # POST /tv_dbs
  # POST /tv_dbs.json
  def create
    @tv_db = TvDb.new(tv_db_params)

    respond_to do |format|
      if @tv_db.save
        format.html { redirect_to @tv_db, notice: 'Tv db was successfully created.' }
        format.json { render :show, status: :created, location: @tv_db }
      else
        format.html { render :new }
        format.json { render json: @tv_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tv_dbs/1
  # PATCH/PUT /tv_dbs/1.json
  def update
    respond_to do |format|
      if @tv_db.update(tv_db_params)
        format.html { redirect_to @tv_db, notice: 'Tv db was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_db }
      else
        format.html { render :edit }
        format.json { render json: @tv_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_dbs/1
  # DELETE /tv_dbs/1.json
  def destroy
    @tv_db.destroy
    respond_to do |format|
      format.html { redirect_to tv_dbs_url, notice: 'Tv db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_db
      @tv_db = TvDb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tv_db_params
      params.require(:tv_db).permit(:name, :desc, :number_of_episodes, :up_to_date)
    end
end
