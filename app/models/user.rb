class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :confirmable
  
  has_one :detail
  has_many :work_experiences
  has_many :educations
  has_many :interest_users
  has_many :interests, through: :interest_users

  after_initialize do
   self.detail ||= self.build_detail
  end
  
  delegate *Detail::ATTR_METHODS, to: :detail

  def interest_list=(input)
    names = input.split(',').collect{|text| text.strip.downcase} 
    names.each do |name|
      interest = Interest.where(name: name).first_or_create
      self.interests << interest unless self.interests.include?(interest)
    end
  end

  def to_s
    "#{first_name} #{last_name}" 
  end
end
