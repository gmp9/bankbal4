class TransactionsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :auth_only
    
  def index
    @transactions = Transaction.all
  end
   
  def show
    @transaction = Transaction.find(params[:id])
  end
  
  def new
    @transaction = Transaction.new
  end
  
  def edit
    @transaction = Transaction.find(params[:id])
  end
  
  def create
    @transaction = Transaction.new(secure_params)
  
    if @transaction.save
      redirect_to transaction_path(@transaction)
    else
       render 'new'
    end
  end
  
  def update
    @transaction = Transaction.find(params[:id])
    
    if @transaction.update(secure_params)
      redirect_to edit_transaction_path(@transaction)
    else
      render :edit
    end
  end
  
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    #redirect to the index 
    redirect_to transactions_path
  end
  
  
  private
  
  def auth_only
    @user = User.find(1)
    unless current_user.admin?
     #unless user #1(admin) is the current user, access is denied
     unless @user == current_user
      redirect_to :back, :alert => "Access denied."
     end
    end
  end
  
  def secure_params
    params.require(:transaction).permit(:date, :bal, :dep, :wdl1, :wdl2, :wdl3)
  end
  
  
end
