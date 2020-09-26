class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update]
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to controller: :users, action: :show
      flash[:notice] = "successfully"
      params[:id] == current_user.id
    else
      render "edit"
      flash[:notice] = "error"
    end
  end
  
  
  
 

   def index
    @books = Book.all
    @users = User.all
    @user = User.find_by_id(current_user.id)
    @book = Book.new
   end


  def show
    @user = User.find(params[:id])
    @user = User.find_by_id(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
    
    if @user.save
      flash[:notice] = "successfully"
    else
      flash[:notice] = "error"
      render "edit"
      @user = current_user
    end
    
    
    
    
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
    
    if @user.save
      flash[:notice] = "successfully"
    else
      
      flash[:notice] = "error"
    end
    
    
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(user_url(current_user)) unless @user == current_user
  end


end
