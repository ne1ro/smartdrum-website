#encoding : utf-8

class PagesController < ApplicationController
  def home
    @title = 'Главная'
  end

  def partners
    @title = 'Наши партнеры'
  end

  def contacts
    @title = 'Контакты'
  end

  def employers
    @title = 'Сотрудники'
  end

  def about
    @title = 'О нас'
  end
end
