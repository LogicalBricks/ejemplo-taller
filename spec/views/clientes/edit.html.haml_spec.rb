require 'spec_helper'

describe "clientes/edit" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :RFC => "MyString",
      :razon_social => "MyString",
      :direccion => "MyString",
      :telefono => "MyString",
      :email => "MyString",
      :nombre_contacto => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do
      assert_select "input#cliente_RFC[name=?]", "cliente[RFC]"
      assert_select "input#cliente_razon_social[name=?]", "cliente[razon_social]"
      assert_select "input#cliente_direccion[name=?]", "cliente[direccion]"
      assert_select "input#cliente_telefono[name=?]", "cliente[telefono]"
      assert_select "input#cliente_email[name=?]", "cliente[email]"
      assert_select "input#cliente_nombre_contacto[name=?]", "cliente[nombre_contacto]"
    end
  end
end
