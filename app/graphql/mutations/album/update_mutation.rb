class Mutations::Album::UpdateMutation < Mutations::BaseMutation
  argument :id, ID, required: true
  with_options required: false do
    argument :name, String
  end

  type Models::AlbumType

  def resolve(id:, **attributes)
    Album.find(id).update(attributes)
  end
end
