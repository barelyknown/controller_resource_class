require "active_support/core_ext/module/delegation"
require "active_support/concern"
require "active_support/inflector"

require "controller_resource_class/version"

require "controller_resource_class/controller"
require "controller_resource_class/able"
require "controller_resource_class/railtie" if defined?(Rails)

module ControllerResourceClass
  # Your code goes here...
end
