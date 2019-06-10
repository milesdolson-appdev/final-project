# == Schema Information
#
# Table name: internet_qualities
#
#  id         :integer          not null, primary key
#  quality    :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InternetQuality < ApplicationRecord
    has_many :study_location_details, :dependent => :destroy
end
