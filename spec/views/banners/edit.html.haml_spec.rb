require 'spec_helper'

describe "banners/edit" do
  before(:each) do
    @banner = assign(:banner, stub_model(Banner,
      :archivo => "MyString",
      :url => "MyString",
      :cliente => nil
    ))
  end

  it "renders the edit banner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", banner_path(@banner), "post" do
      assert_select "input#banner_archivo[name=?]", "banner[archivo]"
      assert_select "input#banner_url[name=?]", "banner[url]"
      assert_select "input#banner_cliente[name=?]", "banner[cliente]"
    end
  end
end
