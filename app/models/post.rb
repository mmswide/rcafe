class Post < ApplicationRecord
  belongs_to :bulletin
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy
end
