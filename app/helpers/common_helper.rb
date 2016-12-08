module CommonHelper
  def get_promise_image(image)
    if image.present?
      image
    else
      'no-image.png'
    end
  end
end
