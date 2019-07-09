# == Schema Information
#
# Table name: words
#
#  id             :integer          not null, primary key
#  name           :string
#  part_of_speech :string
#  translation    :string
#  language_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Word < ActiveRecord::Base
  belongs_to :language
end
