class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
  validates :content, length: { is: 100 }, allow_blank: true
end
