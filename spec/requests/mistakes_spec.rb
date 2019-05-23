require 'rails_helper'

RSpec.describe "Mistakes", type: :request do
  describe "GET /mistakes" do
    it "works! (now write some real specs)" do
      get mistakes_path
      expect(response).to have_http_status(200)
    end
  end
end
