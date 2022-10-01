module Queries
  class GroupsQuery < BaseQuery
    description 'Find all groups'

    argument :ids, [ID], required: false

    type Models::GroupType.connection_type, null: true

    def resolve(ids: nil)
      scope = Group.all
      scope = scope.where(id: ids) if ids.present?
      scope
    end
  end
end
