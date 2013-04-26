class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :todo
  validates :name, presence: true, length: { maximum: 50 }
  validates :todo, presence: true, length: { maximum: 50 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[oracle]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }

end