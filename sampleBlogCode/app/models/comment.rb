class Comment < ActiveRecord::Base
  belongs_to :post

  # validates :comment_desc, presence: true
  # validates :post_id, presence: true
  
end
