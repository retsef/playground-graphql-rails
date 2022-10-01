class Mutations::Group::DestroyMutation < Mutations::BaseMutation
  argument :id, ID, required: true

  type Models::GroupType

  def resolve(id:)
    Group.find(id).destroy
  end
end
