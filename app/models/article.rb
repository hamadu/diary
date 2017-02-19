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

class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :publish_on, presence: true

  def short_body
    body[0, 50]
  end
end
