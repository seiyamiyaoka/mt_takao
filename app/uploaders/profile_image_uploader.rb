class ProfileImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  if Rails.env.development? || Rails.env.test?
    storage :file
  else
    storage :fog
  end

  process resize_to_limit: [100, 100]

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
