class ChangeUploadToFile < ActiveRecord::Migration
  def change
    rename_column :videos, :upload, :videofile
  end
end
