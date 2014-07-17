class Video < ActiveRecord::Base
 mount_uploader :videofile, VideoUploader
 before_create :default_name
 
  def default_name
    self.name ||= File.basename(videofile.filename, '.*').titleize if videofile
  end
 def set_success(format, opts)
    self.success = true
  end
end
