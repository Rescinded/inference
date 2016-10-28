require 'rails_helper'

RSpec.describe "create_surveys/edit", type: :view do
  before(:each) do
    @create_survey = assign(:create_survey, CreateSurvey.create!(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders the edit create_survey form" do
    render

    assert_select "form[action=?][method=?]", create_survey_path(@create_survey), "post" do

      assert_select "input#create_survey_title[name=?]", "create_survey[title]"

      assert_select "textarea#create_survey_description[name=?]", "create_survey[description]"

      assert_select "input#create_survey_user_id[name=?]", "create_survey[user_id]"
    end
  end
end
