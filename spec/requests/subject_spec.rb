require "rails_helper"

Rails.describe "Api::V1::Subjects", type: :request do
  let(:headers) { { "ACCEPT" => "application/json" } }
  let(:json_response) { response.parsed_body }

  describe "Get /api/v1/subjects" do
    let!(:subjects) { create_list(:subject, 5) }

    it "return a sucessful response" do
      get "/api/v1/subjects", headers: headers

      expect(response).to have_http_status(:ok)
    end

    it "return a list of subjects" do
      get "/api/v1/subjects", headers: headers

      expect(json_response.count).to eq(5)
    end
  end
end
