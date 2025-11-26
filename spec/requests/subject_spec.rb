require "rails_helper"

Rails.describe "Api::V1::Subjects", type: :request do
  describe "Get /api/v1/subjects" do
    it "return a sucessful response" do
      get "/api/v1/subjects", headers: { "ACCEPT" => "application/json" }

      expect(response).to have_http_status(:ok)
    end
  end
end
