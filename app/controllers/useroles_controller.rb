class UserolesController < ApplicationController
  before_action :set_userole, only: %i[ show edit update destroy ]

  # GET /useroles or /useroles.json
  def index
    @useroles = Userole.all
  end

  # GET /useroles/1 or /useroles/1.json
  def show
  end

  # GET /useroles/new
  def new
    @userole = Userole.new
  end

  # GET /useroles/1/edit
  def edit
  end

  # POST /useroles or /useroles.json
  def create
    @userole = Userole.new(userole_params)

    respond_to do |format|
      if @userole.save
        format.html { redirect_to userole_url(@userole), notice: "Userole was successfully created." }
        format.json { render :show, status: :created, location: @userole }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @userole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /useroles/1 or /useroles/1.json
  def update
    respond_to do |format|
      if @userole.update(userole_params)
        format.html { redirect_to userole_url(@userole), notice: "Userole was successfully updated." }
        format.json { render :show, status: :ok, location: @userole }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @userole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /useroles/1 or /useroles/1.json
  def destroy
    @userole.destroy!

    respond_to do |format|
      format.html { redirect_to useroles_url, notice: "Userole was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userole
      @userole = Userole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userole_params
      params.require(:userole).permit(:user, :role)
    end
end
