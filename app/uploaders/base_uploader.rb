class BaseUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if Rails.env.staging? || Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  include Sprockets::Helpers::RailsHelper
  include Sprockets::Helpers::IsolatedHelper

  def default_url
    # For Rails 3.1+ asset pipeline compatibility:
    asset_path("fallback/" + [model.class.to_s.underscore, version_name, "default.png"].compact.join('_'))
  end
end

