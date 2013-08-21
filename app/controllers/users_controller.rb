#encoding : utf-8
class UsersController < ApplicationController
before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
before_filter :correct_user, :only => [:edit, :update]
before_filter :admin_user,   :only => :destroy  

def show
    @user = User.find(params[:id])
    @page_title = @user.firstname + ' ' + @user.lastname
  end

  def index
    @users = User.all
    @page_title = "Пользователи"
  end
  
  def new
    @user = User.new
    @page_title = "Регистрация"
  end

  def create
    @page_title = "Регистрация"
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Вы успешно зарегистрированы!"
      redirect_to root_path
    else
      flash[:error] = "Ошибка регистрации"
      @page_title = "Регистрация"
      render 'new'
    end
  end

  def destroy
    @page_title = "Удаление"
    User.find(params[:id]).destroy
    flash[:success] = "Пользователь удален!"
    redirect_to users_path
  end

  def edit
  end
  
  def update
    
  end

def authenticate
  deny_access unless signed_in?
end  

def correct_user
  @user = User.find(params[:id])
  redirect_to(root_path) unless current_user?(@user)
end

def admin_user
  redirect_to(root_path) unless current_user.admin?
end

end
