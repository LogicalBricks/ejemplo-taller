require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :RFC => "Rfc",
      :razon_social => "Razon Social",
      :direccion => "Direccion",
      :telefono => "Telefono",
      :email => "Email",
      :nombre_contacto => "Nombre Contacto"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rfc/)
    rendered.should match(/Razon Social/)
    rendered.should match(/Direccion/)
    rendered.should match(/Telefono/)
    rendered.should match(/Email/)
    rendered.should match(/Nombre Contacto/)
  end
end
