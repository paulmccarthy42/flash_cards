# == Schema Information
#
# Table name: languages
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Language < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :words

  def to_s
    name
  end
end
