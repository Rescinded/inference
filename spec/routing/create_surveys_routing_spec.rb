require "rails_helper"

RSpec.describe CreateSurveysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/create_surveys").to route_to("create_surveys#index")
    end

    it "routes to #new" do
      expect(:get => "/create_surveys/new").to route_to("create_surveys#new")
    end

    it "routes to #show" do
      expect(:get => "/create_surveys/1").to route_to("create_surveys#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/create_surveys/1/edit").to route_to("create_surveys#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/create_surveys").to route_to("create_surveys#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/create_surveys/1").to route_to("create_surveys#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/create_surveys/1").to route_to("create_surveys#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/create_surveys/1").to route_to("create_surveys#destroy", :id => "1")
    end

  end
end
