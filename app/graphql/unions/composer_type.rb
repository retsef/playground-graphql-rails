module Unions
  class ComposerType < Unions::BaseUnion
    possible_types Models::AuthorType, Models::GroupType

    def self.resolve_type(object, _context)
      case object
      when Author
        Models::AuthorType
      when Group
        Models::GroupType
      else
        raise "Unexpected object: #{object}"
      end
    end
  end
end
