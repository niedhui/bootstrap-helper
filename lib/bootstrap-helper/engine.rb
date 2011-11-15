module BootstrapHelper
  class Engine < ::Rails::Engine
    initializer 'bootstrap-helper.initialize' do
      ActiveSupport.on_load(:action_view) do
        include ::BootstrapHelper::Helpers
      end
    end
  end
end