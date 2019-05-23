require 'rails_helper'

RSpec.describe "EvCases", type: :request do
  describe "GET /ev_cases" do
    it "works! (now write some real specs)" do
      get ev_cases_path
      expect(response).to have_http_status(200)
    end
  end
end
