# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string(255)      not null
#  crypted_password :string(255)
#  salt             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
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
