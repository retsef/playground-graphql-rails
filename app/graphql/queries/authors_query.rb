module Queries
  class AuthorsQuery < BaseQuery
    description 'Find all authors'

    argument :ids, [ID], required: false

    type Models::AuthorType.connection_type, null: true

    def resolve(ids: nil)
      scope = Author.all
      scope = scope.where(id: ids) if ids.present?
      scope
    end
  end
end
