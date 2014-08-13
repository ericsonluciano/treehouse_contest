require 'rails_helper'

RSpec.describe "photogalleries/new", :type => :view do
  before(:each) do
    assign(:photogallery, Photogallery.new(
      :title => "MyString",
      :description => "MyString",
      :posted_by => "MyString"
    ))
  end

  it "renders new photogallery form" do
    render

    assert_select "form[action=?][method=?]", photogalleries_path, "post" do

      assert_select "input#photogallery_title[name=?]", "photogallery[title]"

      assert_select "input#photogallery_description[name=?]", "photogallery[description]"

      assert_select "input#photogallery_posted_by[name=?]", "photogallery[posted_by]"
    end
  end
end
