module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh
 
    config.to_prepare do
      Dir.glob(Rails.root + "app/overrides/**/*_override*.rb").each do |c|
        require_dependency(c)
      end
    end
  end
end