module Queries
  class AuthorQuery < BaseQuery
    argument :id, ID, required: true

    type Models::AuthorType, null: false

    def resolve(id:)
      Author.find(id)
    end
  end
end
