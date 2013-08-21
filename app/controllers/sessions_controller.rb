#encoding : utf-8
class SessionsController < ApplicationController
  def new
    @page_title = 'Вход на сайт'
  end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Неверно указаны входные данные."
      @page_title = "Вход на сайт"
      render 'new'
    else
     sign_in user
     flash[:success] = "Добро пожаловать на сайт Smartdrum !"
     redirect_to root_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
