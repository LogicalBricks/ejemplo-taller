require 'spec_helper'

describe "anuncios/edit" do
  before(:each) do
    @anuncio = assign(:anuncio, stub_model(Anuncio,
      :ruteador => nil
    ))
  end

  it "renders the edit anuncio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anuncio_path(@anuncio), "post" do
      assert_select "input#anuncio_ruteador[name=?]", "anuncio[ruteador]"
    end
  end
end
