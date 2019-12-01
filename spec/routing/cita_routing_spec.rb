require "rails_helper"

RSpec.describe CitaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/cita").to route_to("cita#index")
    end

    it "routes to #show" do
      expect(:get => "/cita/1").to route_to("cita#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cita").to route_to("cita#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cita/1").to route_to("cita#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cita/1").to route_to("cita#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cita/1").to route_to("cita#destroy", :id => "1")
    end
  end
end
