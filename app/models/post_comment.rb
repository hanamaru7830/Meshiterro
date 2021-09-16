class PostComment < ApplicationRecord
	#userモデルと1:n
	belongs_to :user
	#imageモデルと1
  belongs_to :post_image
end
