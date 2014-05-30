class WorkExperience < ActiveRecord::Base
  default_scope { order('end_date DESC') }
  belongs_to :user
end
