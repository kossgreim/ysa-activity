class Admin::RegistrationsController < ApplicationController
  before_action :set_registration, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create]

  # GET /registrations
  def index
    if params[:search]
      @registrations = Registration.search(params[:search]).paginate(page: params[:page]).order("id DESC")
    else
      @registrations = Registration.paginate(page: params[:page]).order("id DESC")
    end
    
    respond_to do |format|
      format.html
      format.js
      format.xls {headers["Content-Disposition"] = "attachment; filename=\"registrations_#{Time.now.to_i}.xls\"" }
    end
  end

  # GET /registrations/1
  def show
  end

  # GET /registrations/new
  def new
    @registration = Registration.new
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations
  def create
    @registration = Registration.new(registration_params)
    respond_to do |format|
      if @registration.save
        format.html { redirect_to admin_registrations_path, notice: 'Registration was successfully created.' }
        format.js {@msg = "Thank you for your registration! We're excited to see you :)"}
      else
        format.html {
          flash.now[:alert] = @registration.errors.full_messages.to_sentence
          render "new"
        }
        format.js
      end
    end
  end

  # PATCH/PUT /registrations/1
  def update
    if @registration.update(registration_params)
      redirect_to admin_registration_path(@registration), notice: 'Registration was successfully updated.'
    else
      flash[:alert] = @registration.errors.full_messages.to_sentence
      render :edit
    end
  end

  # DELETE /registrations/1
  def destroy
    @registration.destroy!
      redirect_to admin_registrations_url, notice: 'Registration was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:name, :last_name, :email, :phone, :country, :city, :member, :need_place, :days, :comment, :gender, :arriving)
    end
end
