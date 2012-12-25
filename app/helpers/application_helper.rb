#encoding : utf-8
module ApplicationHelper
  def current_profile
    Profile.find_by_user_id(current_user.id)
  end

 end
