module FactoryBot
  class Declaration::Association
    attr_reader :name

    def initialize(name, attributes)
      @name = name
    end

    def association?
      true
    end
  end
end
