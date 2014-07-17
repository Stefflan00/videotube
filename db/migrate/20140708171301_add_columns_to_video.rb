class AddColumnsToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :mp4_file, :string
    add_column :videos, :webm_file, :string
    add_column :videos, :ogv_file, :string
    add_column :videos, :thumbnail, :string
  end
end
