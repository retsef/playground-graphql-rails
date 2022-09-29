# == Schema Information
#
# Table name: group_authors
#
#  id         :integer          not null, primary key
#  author_id  :integer          not null
#  group_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class GroupAuthor < ApplicationRecord
  belongs_to :author
  belongs_to :group
end
