# frozen_string_literal: true

module Models
  class AlbumType < Types::BaseObject
    description 'A music album'

    field :id, ID, null: false
    field :name, String
    field :genre, String
    field :released_at, GraphQL::Types::ISO8601Date

    # Associations
    field :tracks, Models::TrackType.connection_type
    field :composer, Unions::ComposerType
  end
end
