# == Schema Information
#
# Table name: study_location_details
#
#  id                   :integer          not null, primary key
#  ambience_id          :integer
#  noise_level_id       :integer
#  internet_quality_id  :integer
#  plug_availability_id :integer
#  neighborhood_id      :integer
#  user_id              :integer
#  address_id           :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class StudyLocationDetail < ApplicationRecord
belongs_to :user
has_many :favorites, :class_name => "Bookmark", :dependent => :destroy
belongs_to :location, :class_name => "Neighborhood", :foreign_key => "neighborhood_id"
belongs_to :ambience
belongs_to :noise_level
belongs_to :internet_quality
belongs_to :plug_availability
belongs_to :address
end
