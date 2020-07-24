class PhotoUploader < CarrierWave::Uploader::Base

  process eager: true    # forces version generation at upload time
  # process convert: jpg

end
