module UsersHelper
  
  def user_selection *selected
    if selected[0].nil?
      User.all.collect{|user| [user.email, user.id]}
    else
      options_from_collection_for_select User.all, :id, :email, selected[0]
    end
  end
  
end
