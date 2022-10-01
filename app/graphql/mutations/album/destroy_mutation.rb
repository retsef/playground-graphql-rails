class Mutations::Album::DestroyMutation < Mutations::BaseMutation
  argument :id, ID, required: true

  type Models::AlbumType

  def resolve(id:)
    Album.find(id).destroy
  end
end
