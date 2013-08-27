module ControllerResourceClass
  class Controller

    attr_reader :application_controller, :resource_class_name

    def initialize(klass)
      @application_controller = klass
      @resource_class_name = infer_resource_class_name
    end

    def infer_resource_class_name
      application_controller.to_s.gsub(/Controller\z/,"").singularize
    end

  end
end