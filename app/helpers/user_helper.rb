module UserHelper
  def get_user_name(name)
    if name.blank?
      "名前はまだない"
    else
      name
    end
  end

  def get_image(user)
    if user.image.blank?
      'default_prof.png'
    else
      user.image
    end
  end

  def get_self_introduction(user)
    if user.self_introduction.blank?
      link_to 'なにかひとことを入れてみよう', edit_user_path
    else
      user.self_introduction
    end
  end

  def calc_age(birthday)
    (Date.today.strftime("%Y%m%d").to_i - birthday.strftime("%Y%m%d").to_i) / 10000
  end
end
