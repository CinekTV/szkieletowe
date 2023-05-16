class DaneUserasController < ApplicationController
  before_action :set_dane_usera, only: %i[ show edit update destroy ]

  # GET /dane_useras or /dane_useras.json
  def index
    @dane_useras = DaneUsera.all
  end

  # GET /dane_useras/1 or /dane_useras/1.json
  def show
  end

  # GET /dane_useras/new
  def new
    @dane_usera = DaneUsera.new
  end

  # GET /dane_useras/1/edit
  def edit
  end

  # POST /dane_useras or /dane_useras.json
  def create
    @dane_usera = DaneUsera.new(dane_usera_params)

    respond_to do |format|
      if @dane_usera.save
        format.html { redirect_to dane_usera_url(@dane_usera), notice: "Dane usera was successfully created." }
        format.json { render :show, status: :created, location: @dane_usera }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dane_usera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dane_useras/1 or /dane_useras/1.json
  def update
    respond_to do |format|
      if @dane_usera.update(dane_usera_params)
        format.html { redirect_to dane_usera_url(@dane_usera), notice: "Dane usera was successfully updated." }
        format.json { render :show, status: :ok, location: @dane_usera }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dane_usera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dane_useras/1 or /dane_useras/1.json
  def destroy
    @dane_usera.destroy

    respond_to do |format|
      format.html { redirect_to dane_useras_url, notice: "Dane usera was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dane_usera
      @dane_usera = DaneUsera.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dane_usera_params
      params.require(:dane_usera).permit(:imie, :nazwisko, :nick, :wiek, :pompki_dzis)
    end
end
