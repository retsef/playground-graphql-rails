class Mutations::Author::CreateMutation < Mutations::BaseMutation
  argument :name, String, required: true
  with_options required: false do
    argument :group_ids, [ID]
  end

  type Models::AuthorType

  def resolve(**attributes)
    Author.create(attributes)
  end
end
