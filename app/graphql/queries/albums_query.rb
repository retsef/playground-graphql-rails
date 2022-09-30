module Queries
  class AlbumsQuery < BaseQuery
    argument :ids, [ID], required: false

    type Models::AlbumType.connection_type, null: true

    def resolve(ids: nil)
      scope = Album.all
      scope.where(id: ids) if ids.present?
      scope
    end
  end
end
