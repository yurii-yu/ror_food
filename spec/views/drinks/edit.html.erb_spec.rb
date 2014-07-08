require 'spec_helper'

describe "drinks/edit" do
  before(:each) do
    @drink = assign(:drink, stub_model(Drink,
      :name => "MyString",
      :price => "9.99",
      :memo => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit drink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", drink_path(@drink), "post" do
      assert_select "input#drink_name[name=?]", "drink[name]"
      assert_select "input#drink_price[name=?]", "drink[price]"
      assert_select "input#drink_memo[name=?]", "drink[memo]"
      assert_select "input#drink_image[name=?]", "drink[image]"
    end
  end
end
