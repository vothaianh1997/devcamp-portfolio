class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  default_scope -> { order("id asc") } # desc
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
  belongs_to :topic, optional: true
end
#dùng để push
#git push -f origin master
