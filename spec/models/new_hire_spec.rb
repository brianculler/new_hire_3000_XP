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
#

require 'spec_helper'

describe NewHire do
  pending "add some examples to (or delete) #{__FILE__}"
end
