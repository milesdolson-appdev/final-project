# == Schema Information
#
# Table name: neighborhoods
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Neighborhood < ApplicationRecord
    has_many :study_location_details, :dependent => :destroy
end
