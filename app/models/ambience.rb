# == Schema Information
#
# Table name: ambiences
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ambience < ApplicationRecord
    has_many :study_location_details, :dependent => :destroy
end
