require "rails_helper"

RSpec.describe Subject, type: :model do
  describe "#toggle_completed!" do
    let(:subject) { create(:subject) }

    it "marks the subject as completed if not completed" do
      subject.toggle_completed!

      expect(subject.completed).to be true
    end

    it "marks the subject as not completed if already completed" do
      subject.update(completed: true)
      subject.toggle_completed!

      expect(subject.completed).to be false
    end
  end
end
