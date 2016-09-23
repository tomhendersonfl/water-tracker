class AudioUploader < CarrierWave::Uploader::Base
   # NOTE: storage setting is set globally in config/initializers/carrierwave.rb
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(m4a mp4 mp3)
  end
end
