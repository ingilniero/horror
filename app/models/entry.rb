class Entry < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :title, length: { in: 6..140 }
  validates :content, length: { in: 20..1024 }
end
