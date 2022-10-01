module Types
  class MutationType < Types::BaseObject
    field :create_album, mutation: Mutations::Album::CreateMutation
    field :update_album, mutation: Mutations::Album::UpdateMutation
    field :destroy_album, mutation: Mutations::Album::DestroyMutation

    field :create_author, mutation: Mutations::Author::CreateMutation
    field :update_author, mutation: Mutations::Author::UpdateMutation
    field :destroy_author, mutation: Mutations::Author::DestroyMutation

    field :create_group, mutation: Mutations::Group::CreateMutation
    field :update_group, mutation: Mutations::Group::UpdateMutation
    field :destroy_group, mutation: Mutations::Group::DestroyMutation
  end
end
