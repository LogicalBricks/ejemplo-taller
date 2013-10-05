require 'spec_helper'

describe "anuncios/index" do
  before(:each) do
    assign(:anuncios, [
      stub_model(Anuncio,
        :ruteador => nil
      ),
      stub_model(Anuncio,
        :ruteador => nil
      )
    ])
  end

  it "renders a list of anuncios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
