# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  bio        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  has_many :albums, as: :composer, dependent: :destroy
  has_many :tracks, through: :albums

  has_many :group_authors, dependent: :destroy
  has_many :groups, through: :group_authors
end
