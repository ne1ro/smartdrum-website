#encoding : utf-8
class ProfilesController < ApplicationController
before_filter :authenticate_user!
before_filter :authenticate_profile, :only => [:edit, :update]  
  def show
    @profile = Profile.find(params[:id])
    @title = @profile.firstname + ' ' + @profile.lastname
  end

  def new
    @profile = Profile.new(params[:profile])
    @title = 'Создание профиля'
  end

  def delete
  end

  def edit
    @profile = Profile.find(params[:id])
    @title = 'Редактирование профиля'
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(params[:profile])
      flash[:success] = "Профиль успешно обновлен."
      redirect_to @profile
    else
      @title = "Редактирование профиля"
      render 'edit'
    end
  end

  def create
    @profile = Profile.new(params[:profile])
    @profile.user_id = current_user.id
    if @profile.save
      flash[:success] = "Добро пожаловать на сайт!"
      redirect_to root_path
    else
      @title = "Создание профиля"
      render 'new'
    end
  end

private
  def authenticate_profile
    @profile = Profile.find(params[:id])
    redirect_to root_path unless Profile.find_by_user_id(current_user.id) == @profile  
  end

end
