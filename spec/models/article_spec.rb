# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  body       :text(65535)
#  publish_on :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validation' do
    it 'has valid factory' do
      expect(build(:article)).to be_valid
    end

    it 'is invalid without title' do
      article = build(:article, title: nil)
      expect(article).not_to be_valid
    end

    it 'is invalid without publish_on' do
      article = build(:article, publish_on: nil)
      expect(article).not_to be_valid
    end
  end
end
