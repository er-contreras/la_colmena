class Subject < ApplicationRecord
  validates :title, presence: true

  scope :ordered, -> { order(id: :desc) }

  def toggle_completed!
    update!(completed: !completed)
  end
end
