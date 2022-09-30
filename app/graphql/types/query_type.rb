module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :album, resolver: Queries::AlbumQuery
    field :albums, resolver: Queries::AlbumsQuery

    field :author, resolver: Queries::AuthorQuery
    field :authors, resolver: Queries::AuthorsQuery

    field :group, resolver: Queries::GroupQuery
    field :groups, resolver: Queries::GroupsQuery
  end
end
