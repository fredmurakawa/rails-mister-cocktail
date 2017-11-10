class CocktailUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
