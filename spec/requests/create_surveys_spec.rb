require 'rails_helper'

RSpec.describe "CreateSurveys", type: :request do
  describe "GET /create_surveys" do
    it "works! (now write some real specs)" do
      get create_surveys_path
      expect(response).to have_http_status(200)
    end
  end
end
