class AccountsController < ApplicationController
  before_action :set_account, only: %i[ show edit update destroy withdraw deposit show_balance transaction ]

  #index show new are collection actions
  #show edit update destroy are member actions
  # GET /accounts or /accounts.json
  def index
    @accounts = Account.all
  end

  # GET /accounts/1 or /accounts/1.json
  def show
    puts "Account Type is"
    puts @account.account_type
  end

  # GET /accounts/new
  def new
    @account = Account.new
  end

  # GET /accounts/1/edit
  def edit
  end

  # GET /accounts/1/show_balance
  def show_balance
    puts "Inside show_balance controller"
  end


  # GET /accounts/1/withdraw
  def withdraw
    puts "Inside withdraw controller"
  end

  # GET /accounts/1/deposit
  def deposit
    puts "Inside deposit controller"
  end

  # POST /accounts/1/transaction
  def transaction
    puts "Inside transaction controller"
    amount = params[:amount].to_i
    transaction_type = params[:transaction_type]

    #Checking Withdraw Validation
    if transaction_type == "WITHDRAW"
      if amount > @account.balance
        redirect_to withdraw_account_path(@account), notice: "Please enter amount less than balance"
        return
      end
      @account.balance = @account.balance - amount
      if @account.save and @account.transacs.create(transaction_type: "DEBIT", amount: amount)
        redirect_to accounts_path(@account), notice: "Amount Withdrawn Successfully!!"
      else
        redirect_to accounts_path(@account), notice: "Error in withdrawing amount. Please try again."
      end
    else
      @account.balance = @account.balance + amount
      if @account.save and @account.transacs.create(transaction_type: "CREDIT", amount: amount)
        redirect_to accounts_path(@account), notice: "Amount Deposited Successfully!!"
      else
        redirect_to accounts_path(@account), notice: "Error in depositing amount. Please try again."
      end
    end

  end

  # POST /accounts or /accounts.json
  def create
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to account_url(@account), notice: "Account was successfully created." }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1 or /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to account_url(@account), notice: "Account was successfully updated." }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1 or /accounts/1.json
  def destroy
    @account.destroy

    respond_to do |format|
      format.html { redirect_to accounts_url, notice: "Account was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_params
      params.require(:account).permit(:name, :account_type, :balance, :user_id)
    end
end
