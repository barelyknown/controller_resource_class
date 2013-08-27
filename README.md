# ControllerResourceClass

Adds a `resource_class` method to Rails Controllers.

    class VehiclesController < ApplicationController
      # resource_class automatically set to Vehicle
      def new
        @vehicle = resource_class.new
      end
    end

You can also specify the `resource_class` to be used.

    class HyperloopController < ApplicationController
      set_resource_class Vehicle
    end

Don't want a `resource_class` for a controller?

    class JetpackController < ApplicationController
      set_resource_class false
    end

##Installation

    gem "controller_resource_class"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
