class Mutations::Group::CreateMutation < Mutations::BaseMutation
  argument :name, String, required: true
  with_options required: false do
    argument :author_ids, [ID]
  end

  type Models::GroupType

  def resolve(**attributes)
    Group.create(attributes)
  end
end
