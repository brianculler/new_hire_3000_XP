class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :todo
  validates :name, length: { maximum: 50 }
  validates :todo, length: { maximum: 50 },
  				   uniqueness: true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[oracle]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }

end