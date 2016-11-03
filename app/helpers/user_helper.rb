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

  def get_one_thing(user)
    if user.one_thing.blank?
      link_to 'なにかひとことを入れてみよう', edit_mount_user_path(user)
    else
      user.one_thing
    end
  end
end
