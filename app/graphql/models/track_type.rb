# frozen_string_literal: true

module Models
  class TrackType < Types::BaseObject
    description 'A music track'

    field :id, ID, null: false
    field :name, String
    field :album, Models::AlbumType, null: false
  end
end
