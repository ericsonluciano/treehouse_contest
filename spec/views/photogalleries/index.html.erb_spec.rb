require 'rails_helper'

RSpec.describe "photogalleries/index", :type => :view do
  before(:each) do
    assign(:photogalleries, [
      Photogallery.create!(
        :title => "Title",
        :description => "Description",
        :posted_by => "Posted By"
      ),
      Photogallery.create!(
        :title => "Title",
        :description => "Description",
        :posted_by => "Posted By"
      )
    ])
  end

  it "renders a list of photogalleries" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Posted By".to_s, :count => 2
  end
end
