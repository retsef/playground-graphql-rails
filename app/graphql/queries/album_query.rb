module Queries
  class AlbumQuery < BaseQuery
    description 'Find an album by ID'

    argument :id, ID, required: true

    type Models::AlbumType, null: false

    def resolve(id:)
      Album.find(id)
    end
  end
end
