require 'rails_helper'

RSpec.describe "photogalleries/show", :type => :view do
  before(:each) do
    @photogallery = assign(:photogallery, Photogallery.create!(
      :title => "Title",
      :description => "Description",
      :posted_by => "Posted By"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Posted By/)
  end
end
