require "spec_helper"

module ControllerResourceClass

  class ModelsController; end
  class Model; end

  describe Controller do

    let!(:application_controller) { ModelsController }

    subject do
      described_class.new(application_controller)
    end

    it "should set the controller" do
      expect(subject.application_controller).to eq application_controller
    end

    it "should infer the resource class name" do
      expect(subject.resource_class_name).to eq "ControllerResourceClass::Model"
    end

  end
end