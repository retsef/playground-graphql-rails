module Queries
  class AlbumsQuery < BaseQuery
    description 'Find all albums'

    with_options required: false do
      argument :ids, [ID]
      argument :genre, String
      argument :genres, [String]
    end

    type Models::AlbumType.connection_type, null: true

    def resolve(ids: nil, genre: nil, genres: nil)
      scope = Album.all
      scope = scope.where(id: ids) if ids.present?
      scope = scope.where(genre:) if genre.present?
      scope = scope.where(genre: genres) if genres.present?
      scope
    end
  end
end
