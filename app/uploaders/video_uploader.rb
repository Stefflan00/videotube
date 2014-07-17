require 'carrierwave/processing/mime_types'

class VideoUploader < CarrierWave::Uploader::Base
  include CarrierWave::Video
  include CarrierWave::Video::Thumbnailer
  include CarrierWave::MimeTypes
  include CarrierWave::MiniMagick
  storage :fog

  def store_dir
    "#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  version :mp4 do
    process encode_video: [:mp4]
    process :set_content_type
    def full_filename(for_file)
      "#{File.basename(for_file, File.extname(for_file))}.mp4"
    end
  end


  version :webm do
    process :encode_video => [:webm]
    process :set_content_type
    def full_filename(for_file)
      "#{File.basename(for_file, File.extname(for_file))}.webm"
    end
  end

  version :ogv do
    process :encode_video => [:ogv]
    process :set_content_type
    def full_filename(for_file)
      "#{File.basename(for_file, File.extname(for_file))}.ogv"
    end
  end




end
