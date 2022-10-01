class Mutations::Author::UpdateMutation < Mutations::BaseMutation
  argument :id, ID, required: true
  with_options required: false do
    argument :name, String
  end

  type Models::AuthorType

  def resolve(id:, **attributes)
    Author.find(id).update(attributes)
  end
end
