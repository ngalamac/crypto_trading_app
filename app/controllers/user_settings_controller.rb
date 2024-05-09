class UserSettingsController < ApplicationController
    before_action :set_user
    before_action :set_user_settings, only: [:show, :edit, :update]
  
    # GET /user_settings
    def show
    end
  
    # GET /user_settings/edit
    def edit
    end
  
    # PATCH/PUT /user_settings
    def update
      if @user_settings.update(user_settings_params)
        redirect_to @user, notice: 'User settings were successfully updated.'
      else
        render :edit
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:user_id])
      end
  
      def set_user_settings
        @user_settings = @user.user_settings
      end
  
      # Only allow a trusted parameter "white list" through.
      def user_settings_params
        params.require(:user_settings).permit(:avatar, :card_info, :wallet_address, :nickname, :account_balance)
      end
  end
  