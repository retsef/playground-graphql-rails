class Mutations::Author::DestroyMutation < Mutations::BaseMutation
  argument :id, ID, required: true

  type Models::AuthorType

  def resolve(id:)
    Author.find(id).destroy
  end
end
