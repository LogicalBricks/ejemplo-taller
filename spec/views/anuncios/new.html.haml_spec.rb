require 'spec_helper'

describe "anuncios/new" do
  before(:each) do
    assign(:anuncio, stub_model(Anuncio,
      :ruteador => nil
    ).as_new_record)
  end

  it "renders new anuncio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anuncios_path, "post" do
      assert_select "input#anuncio_ruteador[name=?]", "anuncio[ruteador]"
    end
  end
end
