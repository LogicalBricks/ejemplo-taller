require 'spec_helper'

describe "ruteadors/index" do
  before(:each) do
    assign(:ruteadors, [
      stub_model(Ruteador,
        :usuario => "Usuario",
        :password => "Password",
        :puerto => "Puerto",
        :nombre => "Nombre",
        :observaciones => "MyText"
      ),
      stub_model(Ruteador,
        :usuario => "Usuario",
        :password => "Password",
        :puerto => "Puerto",
        :nombre => "Nombre",
        :observaciones => "MyText"
      )
    ])
  end

  it "renders a list of ruteadors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Usuario".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Puerto".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
