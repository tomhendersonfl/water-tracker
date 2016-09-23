class ImageUploader < CarrierWave::Uploader::Base
   # NOTE: storage setting is set globally in config/initializers/carrierwave.rb

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def default_url(*args)
    "/default/" + [version_name, "FieldDefaultImage.jpg"].compact.join('_')
  end

end
