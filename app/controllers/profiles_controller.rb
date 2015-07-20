class ProfilesController < ApplicationController

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

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :phone_number, :city, :country, :contact_email)
  end

end

