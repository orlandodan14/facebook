class Profile < ApplicationRecord
  belongs_to :user
  
  before_save { self.first_name = first_name.capitalize }
  validates :user_id,    presence: true
  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name,  presence: true, length: { maximum: 20 }   
  #validates :birthday, presence: true
  #validates :gender,   presence: true
  #validates :country,  presence: true
  #validates :state,    presence: true
  #validates :city,     presence: true
  
end
