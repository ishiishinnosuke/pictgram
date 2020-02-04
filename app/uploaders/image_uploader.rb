class ImageUploader < CarrierWave::Uploader::Base
  def extension_whitelist
    %w(jpg jpeg png)
  end
  
  def size_range
    1..10.megabytes
  end

end