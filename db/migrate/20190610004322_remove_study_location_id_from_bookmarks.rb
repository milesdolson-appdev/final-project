class RemoveStudyLocationIdFromBookmarks < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookmarks, :study_location_id
  end
end
