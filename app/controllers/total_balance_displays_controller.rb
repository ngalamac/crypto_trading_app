class TotalBalanceDisplaysController < ApplicationController
    before_action :set_user
    before_action :set_total_balance_display, only: [:show]
  
    # GET /total_balance_displays/1
    def show
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:user_id])
      end
  
      def set_total_balance_display
        @total_balance_display = @user.total_balance_display
      end
  end
  