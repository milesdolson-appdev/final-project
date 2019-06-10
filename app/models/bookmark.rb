# == Schema Information
#
# Table name: bookmarks
#
#  id                       :integer          not null, primary key
#  category_id              :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  study_location_detail_id :integer
#

class Bookmark < ApplicationRecord
    belongs_to :study_location, :class_name => "StudyLocationDetail", :foreign_key => "study_location_detail_id"
    belongs_to :category
end
