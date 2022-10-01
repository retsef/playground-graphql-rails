# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Group < ApplicationRecord
  has_many :albums, as: :composer, dependent: :destroy
  has_many :tracks, through: :albums

  has_many :group_authors, dependent: :destroy
  has_many :authors, through: :group_authors
end
