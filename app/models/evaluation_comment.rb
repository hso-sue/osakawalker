class EvaluationComment < ApplicationRecord
  belongs_to :user
  belongs_to :shop

  validates :title,   presence: true, length: { minimum: 1, maximum: 30, allow_blank: true}
  validates :content, length: { minimum: 1, maximum: 300, allow_blank: true}
  validates :rate,    numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0.5, message: "最低でも0.5以上の評価が必要です"}
end