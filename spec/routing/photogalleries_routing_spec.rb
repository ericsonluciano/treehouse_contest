require "rails_helper"

RSpec.describe PhotogalleriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/photogalleries").to route_to("photogalleries#index")
    end

    it "routes to #new" do
      expect(:get => "/photogalleries/new").to route_to("photogalleries#new")
    end

    it "routes to #show" do
      expect(:get => "/photogalleries/1").to route_to("photogalleries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/photogalleries/1/edit").to route_to("photogalleries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/photogalleries").to route_to("photogalleries#create")
    end

    it "routes to #update" do
      expect(:put => "/photogalleries/1").to route_to("photogalleries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/photogalleries/1").to route_to("photogalleries#destroy", :id => "1")
    end

  end
end
