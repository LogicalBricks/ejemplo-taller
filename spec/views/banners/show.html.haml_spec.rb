require 'spec_helper'

describe "banners/show" do
  before(:each) do
    @banner = assign(:banner, stub_model(Banner,
      :archivo => "Archivo",
      :url => "Url",
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Archivo/)
    rendered.should match(/Url/)
    rendered.should match(//)
  end
end
