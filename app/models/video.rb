class Video < ActiveRecord::Base

 mount_uploader :upload, VideoUploader

 def set_success(format, opts)
    self.success = true
  end
end
