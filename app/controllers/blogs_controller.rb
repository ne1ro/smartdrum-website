#encoding : utf-8
class BlogsController < ApplicationController
before_filter :admin_user, :only => [:edit, :update, :destroy, :new, :create]
def show
    @blog = Blog.find(params[:id])
    @page_title = @blog.header
    @comment = CommentsBlog.new
  end

  def index
    @blog = Blog.all.reverse
    @page_title = 'Блог'
  end

  def new
    @blog = Blog.new
    @page_title = 'Добавить запись'
  end

  def create
    @page_title = 'Добавление записи'
    @blog = Blog.new(params[:blog])
    if @blog.save 
      flash[:success] = "Запись добавлена."
      redirect_to '/blogs'
    else
      flash[:error] = "Ошибка добавления записи."
      @page_title = "Добавление записи"
      render 'new'
    end  
  end

  def destroy
    @page_title = 'Удаление записи'
    @blog = Blog.find(params[:id])
    if @blog.delete
      flash[:success] = "Запись удалена."
      redirect_to '/blogs'
    else
      flash[:error] = "Ошибка удаления записи."
      @page_title = "Удаление записи"
      render 'destroy'
    end  
  end

  def update
    @page_title = "Изменить запись"
    @blog = Blog.update(params[:id], params[:blog])
    if @blog.save
      flash[:success] = 'Запись изменена'
      redirect_to '/blogs'
    else
      flash[:error] = "Ошибка изменения записи"
      @page_title = 'Изменение записи'
      render 'edit'
    end
  end

  def edit
    @page_title = "Изменить запись"
    @blog = Blog.find(params[:id])
  end 

  def admin_user
    redirect_to(root_path) unless signed_in? && current_user.admin?
  end
end
