require "spec_helper"

module ControllerResourceClass
  class ApplicationController
    def self.helper_method(method_name); end
    include Able
  end

  class NonResourcedController < ApplicationController
    set_resource_class false
  end

  class Model; end
  class ModelsController < ApplicationController; end
  class OtherModelsController < ApplicationController
    set_resource_class "ControllerResourceClass::Model"
  end

  describe NonResourcedController do
    it "should return a nil resource class if false" do
      expect(subject.resource_class).to be_nil
    end
  end

  describe ModelsController do
    it "should return the Model class" do
      expect(subject.resource_class).to eq ControllerResourceClass::Model
    end
  end

  describe OtherModelsController do
    it "should return the Model class" do
      expect(subject.resource_class).to eq ControllerResourceClass::Model
    end
  end


end