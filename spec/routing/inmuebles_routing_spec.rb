require "rails_helper"

RSpec.describe InmueblesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/inmuebles").to route_to("inmuebles#index")
    end

    it "routes to #show" do
      expect(:get => "/inmuebles/1").to route_to("inmuebles#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/inmuebles").to route_to("inmuebles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/inmuebles/1").to route_to("inmuebles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/inmuebles/1").to route_to("inmuebles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/inmuebles/1").to route_to("inmuebles#destroy", :id => "1")
    end
  end
end
