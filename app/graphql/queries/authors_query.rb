module Queries
  class AuthorsQuery < BaseQuery
    argument :ids, [ID], required: false

    type Models::AuthorType.connection_type, null: true

    def resolve(ids: nil)
      scope = Author.all
      scope.where(id: ids) if ids.present?
      scope
    end
  end
end
