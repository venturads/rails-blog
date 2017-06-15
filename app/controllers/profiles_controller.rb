class ProfilesController < ApplicationController
    
    def index
        @profiles = Profile.all
    end

    def show
        @profiles = Profile.where(user_id: @user).order("created_at DESC")
    end
    
    def edit
    end
  
    def create
        @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
    end
    
    def destroy
        @profile = @user.profile.find(params[:id])
        @profile.destroy
        redirect_to post_path(@user)
    end

    private
    
    def find_profile
        @profile = Profile.find(params[:id])
    end
end
