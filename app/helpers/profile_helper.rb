#encoding : utf-8
module ProfileHelper
   def deny_access
    redirect_to root_path, :notice => "Вы должны быть зарегистрированы."
  end

  def current_user?(user)
    user == current_user
  end
end
