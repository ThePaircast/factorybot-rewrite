require_relative "factory_bot/attribute"
require_relative "factory_bot/attribute/association"
require_relative "factory_bot/attribute/dynamic"
require_relative "factory_bot/attribute/sequence"
require_relative "factory_bot/attribute_list"
require_relative "factory_bot/callback"
require_relative "factory_bot/declaration"
require_relative "factory_bot/declaration/association"
require_relative "factory_bot/declaration/dynamic"
require_relative "factory_bot/declaration/implicit"
require_relative "factory_bot/declaration_list"
require_relative "factory_bot/decorator"
require_relative "factory_bot/decorator/attribute_hash"
require_relative "factory_bot/decorator/disallows_duplicates_registry"
require_relative "factory_bot/definition"
require_relative "factory_bot/definition_proxy"
require_relative "factory_bot/factory"
require_relative "factory_bot/null_factory"
require_relative "factory_bot/null_object"
require_relative "factory_bot/registry"
require_relative "factory_bot/sequence"
require_relative "factory_bot/strategy"
require_relative "factory_bot/evaluator_class_definer"
require_relative "factory_bot/strategy_calculator"
require_relative "factory_bot/strategy/attributes_for"
require_relative "factory_bot/strategy/build"
require_relative "factory_bot/strategy/create"
require_relative "factory_bot/strategy/stub"

module FactoryBot
  def self.use_parent_strategy=(strategy)

  end

  def self.use_parent_strategy

  end

  def self.reload

  end

  def self.find_definitions
    Dir.children("./spec/factories").each do |filename|
      self.load(File.join(Dir.pwd, "spec", "factories", filename))
    end
  end

  def self.load(filename)
  end
end
