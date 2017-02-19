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
  describe 'validation' do
    it 'has valid factory' do
      expect(build(:user)).to be_valid
    end

    it 'is invalid without email' do
      user = build(:user, email: nil)
      expect(user).not_to be_valid
    end

    it 'is invalid without password' do
      user = build(:user, password: nil)
      expect(user).not_to be_valid
    end

    context 'same email user already exists' do
      before { create(:user) }

      it 'is invalid without password' do
        another_user = build(:user)
        expect(another_user).not_to be_valid
      end
    end
  end
end
