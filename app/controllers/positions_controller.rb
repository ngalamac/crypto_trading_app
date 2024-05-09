class PositionsController < ApplicationController
    before_action :set_user
    before_action :set_position, only: [:show, :edit, :update, :destroy]
  
    # GET /positions
    def index
      @positions = @user.positions
    end
  
    # GET /positions/1
    def show
    end
  
    # GET /positions/new
    def new
      @position = @user.positions.build
    end
  
    # GET /positions/1/edit
    def edit
    end
  
    # POST /positions
    def create
      @position = @user.positions.build(position_params)
  
      if @position.save
        redirect_to [@user, @position], notice: 'Position was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /positions/1
    def update
      if @position.update(position_params)
        redirect_to [@user, @position], notice: 'Position was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /positions/1
    def destroy
      @position.destroy
      redirect_to user_positions_url(@user), notice: 'Position was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:user_id])
      end
  
      def set_position
        @position = @user.positions.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def position_params
        params.require(:position).permit(:currency_type, :amount)
      end
  end
  