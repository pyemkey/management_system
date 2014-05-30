class Detail < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  enum marital_status: [:single, :married]
  enum gender: [:male, :female]
  
  ATTR_METHODS = [ :first_name, :first_name=, :last_name, 
                   :last_name=, :marital_status, :marital_status=, 
                   :gender, :gender=, :birthday, :birthday= ]

  def gender=(g)
    self[:gender] = g.to_i
  end

  def marital_status=(m_s)
    self[:marital_status] = m_s.to_i 
  end

  def to_s
    "#{first_name} #{last_name}" 
  end
end
