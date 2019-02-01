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
  def self.definition_file_paths
    @@definition_file_paths ||= []
  end

  def self.use_parent_strategy=(strategy)

  end

  def self.use_parent_strategy

  end

  def self.reload

  end

  def self.find_definitions
    if File.exists? "./factories.rb"
      self.load(File.join(Dir.pwd, "factories.rb"))
    end

    if File.exists? "./test/factories.rb"
      self.load(File.join(Dir.pwd, "test", "factories.rb"))
    end

    if Dir.exists? "./test/factories"
      self.load_files_in_directory("test/factories")
    end

    if File.exists? "./spec/factories.rb"
      self.load(File.join(Dir.pwd, "spec", "factories.rb"))
    end

    if Dir.exists? "./spec/factories"
      self.load_files_in_directory("spec/factories")
    end
  end

  def self.load_files_in_directory(directory)
    Dir.children(directory).sort.each do |child|
      path = File.join(Dir.pwd, directory, child)

      if File.directory? path
        load_files_in_directory(File.join(directory, child).to_s)
      else
        self.load(path)
      end
    end

  end

  def self.load(filename)
  end
end
