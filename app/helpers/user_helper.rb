module UserHelper
  def get_user_name(name)
    if name.blank?
      "名前はまだない"
    else
      name
    end
  end

  def get_image(user)
    'default_prof.png'
  end
end
