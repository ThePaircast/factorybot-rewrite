module FactoryBot
  module Syntax::Methods
    def create(name)
      name.capitalize.constantize.create()
      # OpenStruct.new(new_record?: false, user: User.new)
    end
  end
end
