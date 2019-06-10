# == Schema Information
#
# Table name: noise_levels
#
#  id         :integer          not null, primary key
#  level      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NoiseLevel < ApplicationRecord
    has_many :study_location_details, :dependent => :destroy
end
