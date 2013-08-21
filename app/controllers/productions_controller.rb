#encoding : utf-8
class ProductionsController < ApplicationController
before_filter :admin_user, :only => [:edit, :update, :delete, :create, :new]
  def show
    @production = Production.find(params[:id])
    @page_title = @production.name
  end

  def index
    @production = Production.all.reverse
    @page_title = 'Продукция'
  end

  def new
    @production = Production.new
    @page_title = 'Добавить продукцию'
  end

  def create
    @page_title = 'Добавление продукции'
    @production = Production.new(params[:production])
    if @production.save 
      flash[:success] = "Продукция добавлена."
      redirect_to '/products'
    else
      flash[:error] = "Ошибка добавления продукции."
      @page_title = "Добавление продукции"
      render 'new'
    end  
  end

  def destroy
    @page_title = 'Удаление продукции'
    @production = Production.find(params[:id])
    if @production.delete
      flash[:success] = "Продукция удалена."
      redirect_to '/products'
    else
      flash[:error] = "Ошибка удаления продукции."
      @page_title = "Удаление продукции"
      render 'destroy'
    end  
  end

  def update
    @page_title = "Изменить продукцию"
    @production = Production.update(params[:id], params[:production])
    if @production.save
      flash[:success] = 'Продукция изменена'
      redirect_to '/products'
    else
      flash[:error] = "Ошибка изменения продукции"
      @page_title = 'Изменение продукции'
      render 'edit'
    end  
  end

  def edit
    @page_title = "Изменить продукцию"
    @production = Production.find(params[:id])
  end 

  def admin_user
    redirect_to(root_path) unless signed_in? && current_user.admin?
  end

end
