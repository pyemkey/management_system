class WorkExperience < ActiveRecord::Base
  default_scope { order('end_date DESC') }
  belongs_to :user
  
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :company_name, presence: true
  validates :position, presence: true
  validates :location, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters' }
                                                 
  validate :correct_date

  def correct_date
    errors.add(:start_date, "You cannot be serious! Your start date is greater than end date !") if end_date < start_date
  end
end
