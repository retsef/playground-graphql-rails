# == Schema Information
#
# Table name: albums
#
#  id            :integer          not null, primary key
#  name          :string
#  composer_type :string           not null
#  composer_id   :integer          not null
#  genre         :string
#  released_at   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Album < ApplicationRecord
  belongs_to :composer, polymorphic: true

  has_many :tracks, dependent: :destroy
end
