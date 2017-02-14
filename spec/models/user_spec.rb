# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)      not null
#  password        :string(255)      not null
#  last_logined_at :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

describe User, type: :model do
  it 'has valid factory' do
    expect(build(:user)).to be_valid
  end

  it 'is invalid without name' do
    user = build(:user, name: nil)
    expect(user).not_to be_valid
  end

  it 'is invalid without password' do
    user = build(:user, password: nil)
    expect(user).not_to be_valid
  end
end
