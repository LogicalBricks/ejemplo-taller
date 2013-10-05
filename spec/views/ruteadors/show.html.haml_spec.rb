require 'spec_helper'

describe "ruteadors/show" do
  before(:each) do
    @ruteador = assign(:ruteador, stub_model(Ruteador,
      :usuario => "Usuario",
      :password => "Password",
      :puerto => "Puerto",
      :nombre => "Nombre",
      :observaciones => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Usuario/)
    rendered.should match(/Password/)
    rendered.should match(/Puerto/)
    rendered.should match(/Nombre/)
    rendered.should match(/MyText/)
  end
end
