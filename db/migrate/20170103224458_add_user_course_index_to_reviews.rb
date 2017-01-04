class AddUserCourseIndexToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :course, index: true
    add_reference :reviews, :user, index: true
  end
end
