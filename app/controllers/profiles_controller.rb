class ProfilesController < ApplicationController
before_action :authenticate_user!
before_action :restrict_user
  def new

    @profile = Profile.new
  end


  def create
    @user = User.find(params[:user_id])
    @profile = @user.profile.create(profile_params)
    if @profile.save
      flash[:success] = "Profile create"
      redirect_to user_path(@user)
    else
      render 'new'
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
        flash[:success] = "Profile Updated"
        redirect_to user_path(@user)
      else
        render 'edit'
      end
    end
  private

  def profile_params
      params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number)
  end

  def restrict_user
    @user = User.find(params[:user_id])
    redirect_to root_path unless @user == current_user
  end
end
