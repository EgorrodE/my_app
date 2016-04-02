module UsersHelper
  def first_name
    name = current_user.first_name
    if name.nil?
      "No name"
    else
      name
    end
  end
  def last_name
    name = current_user.last_name
    if name.nil?
      "No name"
    else
      name
    end
  end
end
