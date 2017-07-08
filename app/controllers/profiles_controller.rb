class ProfilesController < ApplicationController
  
  def new
    @profile = Profile.new
  end
  
  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to user_path(@profile.user)
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    
  end
  
   private

    def profile_params
      params.require(:profile).permit(:user_id, :first_name, :last_name)
    end
end
