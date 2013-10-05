require 'spec_helper'

describe "ruteadors/new" do
  before(:each) do
    assign(:ruteador, stub_model(Ruteador,
      :usuario => "MyString",
      :password => "MyString",
      :puerto => "MyString",
      :nombre => "MyString",
      :observaciones => "MyText"
    ).as_new_record)
  end

  it "renders new ruteador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ruteadors_path, "post" do
      assert_select "input#ruteador_usuario[name=?]", "ruteador[usuario]"
      assert_select "input#ruteador_password[name=?]", "ruteador[password]"
      assert_select "input#ruteador_puerto[name=?]", "ruteador[puerto]"
      assert_select "input#ruteador_nombre[name=?]", "ruteador[nombre]"
      assert_select "textarea#ruteador_observaciones[name=?]", "ruteador[observaciones]"
    end
  end
end
