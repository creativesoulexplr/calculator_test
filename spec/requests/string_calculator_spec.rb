require 'rails_helper'

RSpec.describe "StringCalculators", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/string_calculator/index"
      expect(response).to have_http_status(:success)
    end
  end

end
