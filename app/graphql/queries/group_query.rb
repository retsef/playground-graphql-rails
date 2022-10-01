module Queries
  class GroupQuery < BaseQuery
    description 'Find a group by ID'

    argument :id, ID, required: true

    type Models::GroupType, null: false

    def resolve(id:)
      Group.find(id)
    end
  end
end
