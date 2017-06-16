class RegistrationsController < Devise::RegistrationsController
    
    private

    def sign_up_params
        params.require(:user).permit(:email, :username, :image, :bio, :city, :state, :gender, :password, :password_confirmation, :current_password)
    end

    def account_update_params
        params.require(:user).permit(:email, :username, :image, :bio, :city, :state, :gender, :password, :password_confirmation, :current_password)
    end

end