require 'rails_helper'

RSpec.describe "create_surveys/index", type: :view do
  before(:each) do
    assign(:create_surveys, [
      CreateSurvey.create!(
        :title => "Title",
        :description => "MyText",
        :user => nil
      ),
      CreateSurvey.create!(
        :title => "Title",
        :description => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of create_surveys" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
