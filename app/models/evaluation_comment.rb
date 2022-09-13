class EvaluationComment < ApplicationRecord
  belongs_to :user
  belongs_to :shops

  validates :title,   presence: true
  validates :content, presence: true
end
