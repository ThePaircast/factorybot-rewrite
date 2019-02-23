module FactoryBot
  class Strategy::Create
    def result(evaluation)
      evaluation.notify :after_create, evaluation.object
      evaluation.notify :after_build, evaluation.object
      evaluation.notify :before_create, evaluation.object
      evaluation.create
      evaluation.object
    end

    def association(factory_runner)
      associate_factory = FactoryBot.factory_by_name(factory_runner.name)
      associate_factory.run(factory_runner.strategy, factory_runner.overrides.first)
    end
  end
end

