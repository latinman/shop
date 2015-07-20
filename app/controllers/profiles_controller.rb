class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :only_current_user

  def new
    @user = User.find(params[:user_id])
    @profile = Profile.new
  end

  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)

    if @profile.save
      flash[:success] = "Profile Created!"
      redirect_to user_path(params[:user_id])
    else
      redirect_to "new"
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @profile = @user.profile
  end

  def update
    @user = User.find(params[:user_id])
    @profile = @user.profile

    if @profile.update_attributes(profile_params)
      flash[:success] = "Profile Updated!"
      redirect_to users_path(params[:user_id])
    else
      render "edit"
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :phone_number, :city, :country, :contact_email, :card_number, :card_code, :card_month)
  end

  def only_current_user
    @user = User.find(params[:user_id])
    redirect_to root_url unless @user == current_user
  end
end

