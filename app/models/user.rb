class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :confirmable
  
  has_one :detail
  has_many :work_experiences
  
  after_initialize do
   self.detail ||= self.build_detail
  end
  
  delegate *Detail::ATTR_METHODS, to: :detail

  def to_s
    "#{first_name} #{last_name}" 
  end
end
