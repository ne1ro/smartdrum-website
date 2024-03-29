#encoding : utf-8

class PagesController < ApplicationController
  def home
    @page = Page.find_by_name('home')
    @news = News.order("created_at DESC").limit(5)
    @blog = Record.order("created_at DESC").limit(5)
    @products = Product.order("created_at DESC").limit(5)
    if @page
      @title = @page.title
      render :layout => 'application.html.haml', :inline => @page.content
    end
    @title = 'Главная'
  end

  def partners
    @page = Page.find_by_name('partners')
    if @page
      @title = @page.title
      render :layout => 'application.html.haml', :inline => @page.content
    end
    @title = 'Партнеры'
  end

  def contacts
    @page = Page.find_by_name('contacts')
    if @page
      @title = @page.title
      render :layout => 'application.html.haml', :inline => @page.content
    end
    @title = 'Контакты'
  end

  def employers
    @page = Page.find_by_name('employers')
    if @page
      @title = @page.title
      render :layout => 'application.html.haml', :inline => @page.content
    end
    @title = 'Сотрудники'
  end

  def about
    @page = Page.find_by_name('about')
    if @page
      @title = @page.title
      render :layout => 'application.html.haml', :inline => @page.content
    end
    @title = 'О нас'
  end
end
