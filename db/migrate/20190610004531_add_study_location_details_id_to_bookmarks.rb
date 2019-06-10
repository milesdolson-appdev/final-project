class AddStudyLocationDetailsIdToBookmarks < ActiveRecord::Migration[5.1]
  def change
    add_column :bookmarks, :study_location_detail_id, :integer
  end
end
