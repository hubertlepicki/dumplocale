module Dumplocale
  class Engine < Rails::Engine
    rake_tasks do
      load "dumplocale/railties/tasks.rake"
    end
  end
end
