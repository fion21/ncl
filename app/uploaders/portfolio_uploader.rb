class PortfolioUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # optional: constrain files
  def extension_allowlist
    %w[jpg jpeg png gif webp]
  end
end