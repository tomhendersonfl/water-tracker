class VideoUploader < CarrierWave::Uploader::Base
   # NOTE: storage setting is set globally in config/initializers/carrierwave.rb
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
