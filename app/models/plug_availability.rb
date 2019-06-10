# == Schema Information
#
# Table name: plug_availabilities
#
#  id           :integer          not null, primary key
#  availability :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class PlugAvailability < ApplicationRecord
    has_many :study_location_details, :dependent => :destroy
end
