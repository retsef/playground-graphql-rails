module Queries
  class AuthorQuery < BaseQuery
    description 'Find an author by ID'

    argument :id, ID, required: true

    type Models::AuthorType, null: false

    def resolve(id:)
      Author.find(id)
    end
  end
end
