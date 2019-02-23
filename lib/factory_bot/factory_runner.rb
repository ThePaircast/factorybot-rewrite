module FactoryBot
  class FactoryRunner
    attr_reader :name, :strategy, :overrides

    def initialize(name, strategy, overrides)
      @name = name
      @strategy = strategy
      @overrides = overrides
    end
  end
end
