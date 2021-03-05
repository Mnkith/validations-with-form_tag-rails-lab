class Post < ActiveRecord::Base
  validates :title, presence: true, allow_nil: false  
  validates :content, length: {minimum: 100}
  validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}
end
