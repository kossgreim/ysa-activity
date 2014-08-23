class Admin::UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  layout :admin
  # GET /admin/users
  def index
    @users = User.all
  end

  # GET /admin/users/1
  def show
  end

  # GET /admin/users/new
  def new
    @user = User.new
  end

  # GET /admin/users/1/edit
  def edit
  end

  # POST /admin/users
  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to admin_users_path, notice: 'User has been sucessfully created'
      else
        render :new, alert: @user.errors.full_messages.to_sentence
      end
 
  end

  # PATCH/PUT /admin/users/1
  def update
      if @user.update(user_params)
        redirect_to @user, notice: 'User was successfully updated.' 
      else
        render :edit, alert: @user.errors.full_messages.to_sentence
      end
   end

  # DELETE /admin/users/1
  def destroy
    @user.destroy!
    redirect_to admin_users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :last_name, :password, :email, :password_confiramation)
    end
end
