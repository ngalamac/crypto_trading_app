class VerificationCodesController < ApplicationController
    before_action :set_user
    before_action :set_verification_code, only: [:show, :edit, :update, :destroy]
  
    # GET /verification_codes
    def index
      @verification_codes = @user.verification_codes
    end
  
    # GET /verification_codes/1
    def show
    end
  
    # GET /verification_codes/new
    def new
      @verification_code = @user.verification_codes.build
    end
  
    # GET /verification_codes/1/edit
    def edit
    end
  
    # POST /verification_codes
    def create
      @verification_code = @user.verification_codes.build(verification_code_params)
  
      if @verification_code.save
        redirect_to [@user, @verification_code], notice: 'Verification code was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /verification_codes/1
    def update
      if @verification_code.update(verification_code_params)
        redirect_to [@user, @verification_code], notice: 'Verification code was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /verification_codes/1
    def destroy
      @verification_code.destroy
      redirect_to user_verification_codes_url(@user), notice: 'Verification code was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:user_id])
      end
  
      def set_verification_code
        @verification_code = @user.verification_codes.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def verification_code_params
        params.require(:verification_code).permit(:code, :expiration_time)
      end
  end
  