require 'rails_helper'

RSpec.describe "photogalleries/edit", :type => :view do
  before(:each) do
    @photogallery = assign(:photogallery, Photogallery.create!(
      :title => "MyString",
      :description => "MyString",
      :posted_by => "MyString"
    ))
  end

  it "renders the edit photogallery form" do
    render

    assert_select "form[action=?][method=?]", photogallery_path(@photogallery), "post" do

      assert_select "input#photogallery_title[name=?]", "photogallery[title]"

      assert_select "input#photogallery_description[name=?]", "photogallery[description]"

      assert_select "input#photogallery_posted_by[name=?]", "photogallery[posted_by]"
    end
  end
end
