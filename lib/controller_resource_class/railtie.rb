module ControllerResourceClass
  class Railtie < Rails::Railtie
    initializer "controller_resource_class.action_controller" do
      ActiveSupport.on_load(:action_controller) do
        include Able
      end
    end
  end
end