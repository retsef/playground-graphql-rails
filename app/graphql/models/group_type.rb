# frozen_string_literal: true

module Models
  class GroupType < Types::BaseObject
    description 'A music band'

    field :id, ID, null: false
    field :name, String
    field :albums, Models::AlbumType.connection_type
    field :authors, Models::AuthorType.connection_type
  end
end
