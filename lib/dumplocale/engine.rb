module Dumplocale
  class Engine < Rails::Engine
    engine_name :dumplocale

    rake_tasks do
      load "dumplocale/railties/tasks.rake"
    end
  end
end
