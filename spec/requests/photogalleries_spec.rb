require 'rails_helper'

RSpec.describe "Photogalleries", :type => :request do
  describe "GET /photogalleries" do
    it "works! (now write some real specs)" do
      get photogalleries_path
      expect(response.status).to be(200)
    end
  end
end
