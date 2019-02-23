module FactoryBot
  class Factory
    attr_reader :name, :associations

    def initialize(name, attributes = {})
      @name = name
      @associations = []
    end

    def names
      [@name]
    end

    def human_names
      [@name].map(&:to_s).map(&:downcase).map(&:humanize)
    end

    def build_class
      @name.to_s.capitalize.constantize
    end

    def declare_attribute(attribute)
      @associations << attribute
    end
  end
end
