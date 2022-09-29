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

  has_and_belongs_to_many :groups, join_table: :group_authors
end
