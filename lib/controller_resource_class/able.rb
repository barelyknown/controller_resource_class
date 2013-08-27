module ControllerResourceClass
  module Able
    extend ActiveSupport::Concern

    def resource_class
      self.class.resource_class
    end

    module ClassMethods
      def set_resource_class(value)
        self.resource_class_name = value
      end

      def resource_class
        return nil if resource_class_name == false
        self.resource_class_name = Controller.new(self).resource_class_name unless resource_class_name
        resource_class_name.constantize
      end

    private
      def resource_class_name=(value)
        @resource_class_name = case value
          when false then false
          when String, Class then String(value)
          else 
        end
      end

      def resource_class_name
        @resource_class_name
      end

    end
  end
end