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

require 'spec_helper'

describe NewHire do
  pending "add some examples to (or delete) #{__FILE__}"
end
