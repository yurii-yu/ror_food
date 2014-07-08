require 'spec_helper'

describe "drinks/show" do
  before(:each) do
    @drink = assign(:drink, stub_model(Drink,
      :name => "Name",
      :price => "9.99",
      :memo => "Memo",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/9.99/)
    rendered.should match(/Memo/)
    rendered.should match(/Image/)
  end
end
