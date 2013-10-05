require 'spec_helper'

describe "anuncios/show" do
  before(:each) do
    @anuncio = assign(:anuncio, stub_model(Anuncio,
      :ruteador => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
