require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :RFC => "Rfc",
        :razon_social => "Razon Social",
        :direccion => "Direccion",
        :telefono => "Telefono",
        :email => "Email",
        :nombre_contacto => "Nombre Contacto"
      ),
      stub_model(Cliente,
        :RFC => "Rfc",
        :razon_social => "Razon Social",
        :direccion => "Direccion",
        :telefono => "Telefono",
        :email => "Email",
        :nombre_contacto => "Nombre Contacto"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rfc".to_s, :count => 2
    assert_select "tr>td", :text => "Razon Social".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre Contacto".to_s, :count => 2
  end
end
