# == Schema Information
#
# Table name: addresses
#
#  id            :integer          not null, primary key
#  street_number :integer
#  street        :string
#  city          :string
#  postal_code   :integer
#  state         :string
#  country       :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Address < ApplicationRecord
    has_many :study_location_details, :dependent => :destroy
end
