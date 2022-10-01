class Mutations::Album::CreateMutation < Mutations::BaseMutation
  argument :name, String, required: true
  with_options required: false do
    argument :genre, String
    argument :released_at, GraphQL::Types::ISO8601Date
  end

  type Models::AlbumType

  def resolve(**attributes)
    Album.create(attributes)
  end
end
