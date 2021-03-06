# == Schema Information
#
# Table name: new_hires
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  email            :string(255)
#  start_date       :string(255)
#  office_location  :string(255)
#  type_of_computer :string(255)
#  department       :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  laptop           :integer          default(0)
#  badge            :integer          default(0)
#  vpn              :integer          default(0)
#  seat             :integer          default(0)
#  docs             :integer          default(0)
#  irc              :integer          default(0)
#  vm               :integer          default(0)
#

class NewHire < ActiveRecord::Base
  attr_accessible :department, :email, :name, :office_location, :start_date, :type_of_computer,
                  :laptop, :badge, :vpn, :seat, :docs, :irc, :vm, :manager

  before_save { |user| user.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[oracle]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
  validates :department, presence: true, length: { maximum: 50 }
  validates :office_location, presence: true, length: { maximum: 200 }
  validates :start_date, presence: true, length: { maximum: 30 }
  validates :type_of_computer, presence: true, length: { maximum: 30 }
  validates :manager, presence: true, length: { maximum: 30 }
  
  def self.search(search)
    if search
      where 'name LIKE ? ', "%#{search}%"
    else
      scoped
    end
  end               
end
