module Chosen
  module Rails
    class Engine < ::Rails::Engine
      initializer 'chosen.assets.precompile' do |app|
        if app.config.respond_to?(:assets)
          app.config.assets.precompile += %w(
            chosen-sprite*.png
          )
        end
      end

      rake_tasks do
        load 'chosen-rails/tasks.rake'
      end
    end
  end
end
