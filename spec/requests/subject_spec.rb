require "rails_helper"

Rails.describe "Subjects", type: :request do
  let(:json_response) { response.parsed_body }

  describe "Get /subjects" do
    let!(:subjects) { create_list(:subject, 5) }

    it "return a sucessful response" do
      get "/subjects", as: :json

      expect(response).to have_http_status(:ok)
    end

    it "return a list of subjects" do
      get "/subjects", as: :json

      expect(json_response.count).to eq(5)
    end
  end
end
