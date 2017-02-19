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

FactoryGirl.define do
  factory :article do
    title 'たいとる'
    body 'ほんぶん'
    publish_on '2017-02-19 09:13:18'
  end
end
