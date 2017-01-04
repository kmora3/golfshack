class RemovePhotoFieldFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :photo_file_name, :string
    remove_column :courses, :photo_content_type, :string
    remove_column :courses, :photo_file_size, :string
    remove_column :courses, :photo_updated_at, :string

  end
end
