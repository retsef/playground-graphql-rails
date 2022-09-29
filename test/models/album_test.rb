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
require "test_helper"

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
