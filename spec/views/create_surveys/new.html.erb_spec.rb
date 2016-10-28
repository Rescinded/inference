require 'rails_helper'

RSpec.describe "create_surveys/new", type: :view do
  before(:each) do
    assign(:create_survey, CreateSurvey.new(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new create_survey form" do
    render

    assert_select "form[action=?][method=?]", create_surveys_path, "post" do

      assert_select "input#create_survey_title[name=?]", "create_survey[title]"

      assert_select "textarea#create_survey_description[name=?]", "create_survey[description]"

      assert_select "input#create_survey_user_id[name=?]", "create_survey[user_id]"
    end
  end
end
