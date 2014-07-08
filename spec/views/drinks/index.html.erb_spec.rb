require 'spec_helper'

describe "drinks/index" do
  before(:each) do
    assign(:drinks, [
      stub_model(Drink,
        :name => "Name",
        :price => "9.99",
        :memo => "Memo",
        :image => "Image"
      ),
      stub_model(Drink,
        :name => "Name",
        :price => "9.99",
        :memo => "Memo",
        :image => "Image"
      )
    ])
  end

  it "renders a list of drinks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
