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
  PARTS_OF_SPEECH = %w(Noun Verb Adjective Adverb).freeze
  validates :name, presence: true, uniqueness: true
  validates :part_of_speech, presence: true, inclusion: {in: PARTS_OF_SPEECH}
  belongs_to :language

  def to_s
    name
  end
end
