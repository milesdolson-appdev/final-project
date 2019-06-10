# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  category   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
    has_many :favorites, :class_name => "Bookmark", :dependent => :destroy
end
