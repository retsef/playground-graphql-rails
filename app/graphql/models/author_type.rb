# frozen_string_literal: true

module Models
  class AuthorType < Types::BaseObject
    description 'A music composer'

    field :id, ID, null: false
    field :name, String

    field :groups, Models::GroupType.connection_type
    field :albums, Models::AlbumType.connection_type
    field :tracks, Models::TrackType.connection_type
  end
end
