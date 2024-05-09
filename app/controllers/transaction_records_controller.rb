class TransactionRecordsController < ApplicationController
    before_action :set_user
    before_action :set_transaction_record, only: [:show, :edit, :update, :destroy]
  
    # GET /transaction_records
    def index
      @transaction_records = @user.transaction_records
    end
  
    # GET /transaction_records/1
    def show
    end
  
    # GET /transaction_records/new
    def new
      @transaction_record = @user.transaction_records.build
    end
  
    # GET /transaction_records/1/edit
    def edit
    end
  
    # POST /transaction_records
    def create
      @transaction_record = @user.transaction_records.build(transaction_record_params)
  
      if @transaction_record.save
        redirect_to [@user, @transaction_record], notice: 'Transaction record was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /transaction_records/1
    def update
      if @transaction_record.update(transaction_record_params)
        redirect_to [@user, @transaction_record], notice: 'Transaction record was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /transaction_records/1
    def destroy
      @transaction_record.destroy
      redirect_to user_transaction_records_url(@user), notice: 'Transaction record was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:user_id])
      end
  
      def set_transaction_record
        @transaction_record = @user.transaction_records.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def transaction_record_params
        params.require(:transaction_record).permit(:type, :timestamp)
      end
  end
  