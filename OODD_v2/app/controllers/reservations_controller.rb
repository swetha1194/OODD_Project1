class ReservationsController < ApplicationController
  include SessionsHelper
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  before_action :is_logged_in?
  #before_action :checkauth?, only: [:new, :edit, :update, :destroy]
  
  def checkauth?
    unless is_admin?
      flash[:privileges]="Not enough privileges"
      redirect_to root_path
    end
  end
  def is_logged_in?
    if current_user == nil
      flash[:privileges]="Please log in"
      redirect_to login_path
    end
  end 

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
    #@reservation.room_id = params[:id]
    #@reservation.member_id = current_user
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.member_id=current_user.id
    #@reservation.room_id=5
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: current_user}
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:room_id, :date, :start_time, :end_time)
    end
end
