class ProfilesController < ApplicationController
    
    def index
        @users = User.paginate(:page => params[:page], :per_page => 3)
    end

    def show
        @profile = User.find(params[:id])
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
    
    def update
        respond_to do |format|
          if @profile.update(profile_params)
            format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
            format.json { render :show, status: :ok, location: @profile }
          else
            format.html { render :edit }
            format.json { render json: @profile.errors, status: :unprocessable_entity }
          end
        end
    end
  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profile_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:username, :bio, :image, :city, :state, :gender, :location)
    end
end
