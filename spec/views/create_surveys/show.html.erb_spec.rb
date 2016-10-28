require 'rails_helper'

RSpec.describe "create_surveys/show", type: :view do
  before(:each) do
    @create_survey = assign(:create_survey, CreateSurvey.create!(
      :title => "Title",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
