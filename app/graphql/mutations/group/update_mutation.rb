class Mutations::Group::UpdateMutation < Mutations::BaseMutation
  argument :id, ID, required: true
  with_options required: false do
    argument :name, String
    argument :author_ids, [ID]
  end

  type Models::GroupType

  def resolve(id:, **attributes)
    Group.find(id).update(attributes)
  end
end
