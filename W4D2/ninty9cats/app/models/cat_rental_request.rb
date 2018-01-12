class CatRentalRequest < ActiveRecord::Base
  validates :cat_id, presence: true
  validates :status, inclusion: {in: w%(APPROVED DENIED PENDING) },
  message: "%{value} is not a valid size"
  validates :start_date, :end_date, if: :overlapping_requests?

  belongs_to :cat, dependent: :destroy

  def overlapping_requests?

  end
end
