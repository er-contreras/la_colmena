require "rails_helper"

Rails.describe "Api::V1::Subjects", type: :request do
  let(:json_response) { response.parsed_body }

  describe "Get /api/v1/subjects" do
    let!(:subjects) { create_list(:subject, 5) }

    it "return a sucessful response" do
      get "/api/v1/subjects", as: :json

      expect(response).to have_http_status(:ok)
    end

    it "return a list of subjects" do
      get "/api/v1/subjects", as: :json

      expect(json_response["subjects"].count).to eq(5)
    end

    it "returns subjects in correct schema" do
      get "/api/v1/subjects", as: :json

      expect(json_response).to match_json_schema("subjects/index")
    end
  end
end
