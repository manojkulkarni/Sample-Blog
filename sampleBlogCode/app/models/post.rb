class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy

	validates :title, presence: true
    validates :prticle_type, presence: true
    validates :desc, presence: true
end
