require "rails_helper"

Rails.describe "Subjects", type: :request do
  describe "Get /subjects" do
    let!(:subjects) { create_list(:subject, 5) }

    it "return a sucessful response" do
      get "/subjects"

      expect(response).to have_http_status(:ok)
    end

    it "render subjects titles" do
      get "/subjects"

      subjects.each do |subject|
        expect(response.body).to include(subject.title)
      end
    end
  end
end
